import java.util.LinkedList
q1 = LinkedList();
q2 = LinkedList();
q3 = LinkedList();
q4 = LinkedList();
intensityQueue = [q1 q2 q3 q4];


% Hd = HighPass15000HzButterworth;
Hd = HighPass15000HzButterworth;



f2 = open('3DPlotTest3.fig');

propsGCF = get(gcf);
propsGCA = get(gca);
% close(f1);

p = plot3(0, 0, 0);


readonlyGCF = {'BeingDeleted','CurrentCharacter','CurrentObject','Number', 'Type'};
readonlyGCA = {'BeingDeleted','Type', 'XLabel', 'YLabel', 'ZLabel', 'CurrentPoint', 'Title', 'YAxis', 'Legend', 'TightInset', 'Children'};
propsGCF = rmfield(propsGCF, readonlyGCF);
propsGCA = rmfield(propsGCA, readonlyGCA);

fnames = fieldnames(propsGCF);
for n = 1:length(fnames)
    set(gcf,fnames{n},propsGCF.(fnames{n}))
end


fnames = fieldnames(propsGCA);
for n = 1:length(fnames)
%     disp(n);
%     fnames{n}
    set(gca,fnames{n},propsGCA.(fnames{n}))
end

f1 = figure('Name','Frequency Spectrum');



avgN = 0;

while true
    
    if (avgN == 4)
        avgN = 1;
    else
        avgN = avgN + 1;
    end
    
    
    fprintf(s, 'Ready', 'async');
    pause(0.1);
    L = 0;
    intensity = [0 0 0 0];
    for n = 1:4
        % Grab header data
        while true
            if (s.BytesAvailable > 2)
                [out, count] = fscanf(s, "Mic:%d SampleRate:%d Length:%d\r\n");

                % Skip if the data is empty
                if (length(out) ~= 3)
                    continue;
                end


                Mic = out(1);
                Fs = out(2);
                L = out(3);
                
                break;
            end      
        end
        
        data = GetData(s, L);
        Y = NormalizeSignal(data);
%         figure(1);
%         subplot(2,2,n);
%         plot(Y);
        
        Y = filter(Hd, Y);   
        Y = fft(Y);


        P2 = abs(Y/L);
        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);
        f = Fs*(0:(L/2))/L;
        [M, I] = max(P1);
        
        if (intensityQueue(n).size() == 4)
            intensityQueue(n).remove();
        end
            intensityQueue(n).add(M);
            
            
        intensity(n) = GetIntensityAverage(intensityQueue(n));
        figure(f1);
        
        subplot(2,2,n);
        plot(f,P1);
       
        

%         disp();
%         xlim([1000 2500])
        xlabel('f (Hz)')
        ylabel('|P1(f)|')
        title(sprintf("Mic[%d] Max freq:%f Intensity:%f", n, f(I), M))
    end
    
    
    
    if(avgN == 4)
        dirVect3 = SoundDistance(intensity);
        
        figure(f2);
        hold on;
        plot3([0 dirVect3(1)], [0 dirVect3(2)], [0 dirVect3(3)], '-o');
%         plot3(dirVect3(1),dirVect3(2), dirVect3(3), '^');        
        hold off;
    else
        fprintf("Taking %d more samples\n", 4 - avgN);
    end
    
%     hold on;
    % 
    % open('3D Plot.fig');
    % readonly = {'BeingDeleted','CurrentCharacter','CurrentObject','FixedColors','Type'};
    % 

    % props = rmfield(props, readonly);
    % fnames = fieldnames(props);
    % for n = 1:length(fnames)
    %       set(gcf,fnames{n},props.(fnames{n}))
    % end


    
    
    
    
end


function y = GetIntensityAverage(intensityQ)
    y = 0;
    for n = 0:intensityQ.size() - 1
       y = y + intensityQ.get(n);
    end
    
    y = y / intensityQ.size();   
end

function [data] = GetData(s, L)
	data = zeros(1, length(1:L));
    for n = 1:L
        while true
            if (s.BytesAvailable)
%                 disp(n);
                out = fscanf(s, '%c%c%c', 3);

                % Skip if the data is empty
                if (size(out) == 0)
                    continue;
                end

                numbie = hex2dec(out);
                if (numbie > 4095)
                    continue;
                end

                data(n) = numbie;
                break;
            end
        end
    end
     
    out = fgets(s);
end

function [sig] = NormalizeSignal(uint12Value)
    % Unsigned 12-Bit = 0...4095
    sig = uint12Value * (1 / 4095) * 2 - 1;
end
