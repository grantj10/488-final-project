
%%
% fclose(instrfind);
clear all;


% OPEN THE SHOP FOR SELLING!!!
s = serial('COM2', ... 
    'BaudRate',115200, ...
    'DataBits', 8, ...
    'StopBits', 1, ...
    'Parity', 'none', ...
    'Terminator', 'CR/LF' ...
    );

fopen(s);



%%
% CLOSE UP SHOP!!!
fclose(s);
delete(s);
clear s




function [dValue] = GetPhysicalValue(integerValue)
    dReference = 3.3;
    dataShift = 12;
	dValue = integerValue * (dReference /((bitsll(1,dataShift)) - 1));
end