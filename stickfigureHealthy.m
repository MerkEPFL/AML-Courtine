function [] = stickfigureHealthy(data, left, subject, FLOATorNOT, rangeStart, rangeEnd)
%Plot a stick figure on the XZ-plane
%   data: comes from HealthySegmentation
%   left: boolean, if 1 is left leg else right


gaitCycles = fieldnames(data.(subject).(FLOATorNOT));
plotDataTOE = [];
plotDataANK = [];
plotDataKNE = [];
plotDataHIP = [];

[logicalMaskLeftFO, logicalMaskLeftFS, logicalMaskRightFO, logicalMaskRightFS]...
    = logicalMaskHealthy(data, subject, FLOATorNOT);



if (left)
    for i = 1:numel(gaitCycles)
        GC = char(gaitCycles(i));
        plotDataTOE = [plotDataTOE; data.(subject).(FLOATorNOT).(GC).Kin.LTOE];
        plotDataANK = [plotDataANK; data.(subject).(FLOATorNOT).(GC).Kin.LANK];
        plotDataKNE = [plotDataKNE; data.(subject).(FLOATorNOT).(GC).Kin.LKNE];
        plotDataHIP = [plotDataHIP; data.(subject).(FLOATorNOT).(GC).Kin.LHIP];
    end
else
    for i = 1:numel(gaitCycles)
        GC = char(gaitCycles(i));
        plotDataTOE = [plotDataTOE; data.(subject).(FLOATorNOT).(GC).Kin.RTOE];
        plotDataANK = [plotDataANK; data.(subject).(FLOATorNOT).(GC).Kin.RANK];
        plotDataKNE = [plotDataKNE; data.(subject).(FLOATorNOT).(GC).Kin.RKNE];
        plotDataHIP = [plotDataHIP; data.(subject).(FLOATorNOT).(GC).Kin.RHIP];
    end
end

sizeData = size(plotDataTOE(:,1));

if (sizeData(1) < rangeEnd)
    rangeEnd = sizeData(1);
end
 
figure();
hold on
for i = rangeStart:1:rangeEnd
    if (left)
        if(logicalMaskLeftFO(i) == 1)
            line([plotDataTOE(i,1) plotDataANK(i,1)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','red','LineWidth', 2);
            line([plotDataANK(i,1) plotDataKNE(i,1)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','red','LineWidth', 2);
            line([plotDataKNE(i,1) plotDataHIP(i,1)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','red','LineWidth', 2);
        elseif(logicalMaskLeftFS(i) == 1)
            line([plotDataTOE(i,1) plotDataANK(i,1)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','magenta','LineWidth', 2);
            line([plotDataANK(i,1) plotDataKNE(i,1)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','magenta','LineWidth', 2);
            line([plotDataKNE(i,1) plotDataHIP(i,1)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','magenta','LineWidth', 2);
        else
            line([plotDataTOE(i,1) plotDataANK(i,1)],[plotDataTOE(i,3) plotDataANK(i,3)]);
            line([plotDataANK(i,1) plotDataKNE(i,1)],[plotDataANK(i,3) plotDataKNE(i,3)]);
            line([plotDataKNE(i,1) plotDataHIP(i,1)],[plotDataKNE(i,3) plotDataHIP(i,3)]);
        end
    else
        if(logicalMaskRightFO(i) == 1)
            line([plotDataTOE(i,1) plotDataANK(i,1)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','red','LineWidth', 2);
            line([plotDataANK(i,1) plotDataKNE(i,1)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','red','LineWidth', 2);
            line([plotDataKNE(i,1) plotDataHIP(i,1)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','red','LineWidth', 2);
        elseif(logicalMaskRightFS(i) == 1)
            line([plotDataTOE(i,1) plotDataANK(i,1)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','magenta','LineWidth', 2);
            line([plotDataANK(i,1) plotDataKNE(i,1)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','magenta','LineWidth', 2);
            line([plotDataKNE(i,1) plotDataHIP(i,1)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','magenta','LineWidth', 2);
        else
            line([plotDataTOE(i,1) plotDataANK(i,1)],[plotDataTOE(i,3) plotDataANK(i,3)]);
            line([plotDataANK(i,1) plotDataKNE(i,1)],[plotDataANK(i,3) plotDataKNE(i,3)]);
            line([plotDataKNE(i,1) plotDataHIP(i,1)],[plotDataKNE(i,3) plotDataHIP(i,3)]);
        end
    end
end
title('Stick Figure Plot');
xlabel('Sampling points');
hold off

end

