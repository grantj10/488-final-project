close;
clear;
open('3DPlotTest2.fig');
propsGCF = get(gcf);
propsGCA = get(gca);

plot3([0 1], [0, 2], [0, 3]);


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
    disp(n);
    fnames{n}
    set(gca,fnames{n},propsGCA.(fnames{n}))
end


