function [] = stickfigureHealthy(data, left, subject, FLOATorNOT, rangeStart, rangeEnd)
%Plot a stick figure on the XZ-plane
%   data: comes from HealthySegmentation, Choose between:
%       HealthySubjectsGaitCyclesLeft/HealthySubjectsGaitCyclesRight
%   left: boolean, if 1 is left leg else right
%   subject: Specify the subject, choose between 'Subject1' till 'Subject9'
%   FLOATorNOT: Specify if float or no float, choose between 'FLOAT' or
%       'NOFLOAT'
%   rangeStart, rangeEnd: choose the range of the plot

%Store the names of the gate cycles
gaitCycles = fieldnames(data.(subject).(FLOATorNOT));
plotDataTOE = [];
plotDataANK = [];
plotDataKNE = [];
plotDataHIP = [];

%Compute the logical masks for this data
[logicalMaskLeftFO, logicalMaskLeftFS, logicalMaskRightFO, logicalMaskRightFS]...
    = logicalMaskHealthy(data, subject, FLOATorNOT);


%Append all the gate cycles registrations as a continous recording
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

%Check if the range given are appropriate
if (sizeData(1) < rangeEnd)
    rangeEnd = sizeData(1);
end
if(rangeStart < 1)
    rangeStart = 1;
end
if(rangeStart >= rangeEnd)
    rangeStart = 1;
end

%Plot primitive lines for the YZ-axis connecting Toe to Ankle, Ankle to
%Knee, Knee to Hips.
figure();
hold on
for i = rangeStart:1:rangeEnd
    if (left)
        if(logicalMaskLeftFO(i) == 1)
            line([plotDataTOE(i,2) plotDataANK(i,2)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','red','LineWidth', 2,'Marker','.');
            line([plotDataANK(i,2) plotDataKNE(i,2)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','red','LineWidth', 2,'Marker','.');
            line([plotDataKNE(i,2) plotDataHIP(i,2)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','red','LineWidth', 2,'Marker','.');
        elseif(logicalMaskLeftFS(i) == 1)
            line([plotDataTOE(i,2) plotDataANK(i,2)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','magenta','LineWidth', 2,'Marker','.');
            line([plotDataANK(i,2) plotDataKNE(i,2)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','magenta','LineWidth', 2,'Marker','.');
            line([plotDataKNE(i,2) plotDataHIP(i,2)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','magenta','LineWidth', 2,'Marker','.');
        else
            line([plotDataTOE(i,2) plotDataANK(i,2)],[plotDataTOE(i,3) plotDataANK(i,3)],'Marker','.');
            line([plotDataANK(i,2) plotDataKNE(i,2)],[plotDataANK(i,3) plotDataKNE(i,3)],'Marker','.');
            line([plotDataKNE(i,2) plotDataHIP(i,2)],[plotDataKNE(i,3) plotDataHIP(i,3)],'Marker','.');
        end
    else
        if(logicalMaskRightFO(i) == 1)
            line([plotDataTOE(i,2) plotDataANK(i,2)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','red','LineWidth', 2,'Marker','.');
            line([plotDataANK(i,2) plotDataKNE(i,2)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','red','LineWidth', 2,'Marker','.');
            line([plotDataKNE(i,2) plotDataHIP(i,2)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','red','LineWidth', 2,'Marker','.');
        elseif(logicalMaskRightFS(i) == 1)
            line([plotDataTOE(i,2) plotDataANK(i,2)],[plotDataTOE(i,3) plotDataANK(i,3)], 'Color','magenta','LineWidth', 2,'Marker','.');
            line([plotDataANK(i,2) plotDataKNE(i,2)],[plotDataANK(i,3) plotDataKNE(i,3)], 'Color','magenta','LineWidth', 2,'Marker','.');
            line([plotDataKNE(i,2) plotDataHIP(i,2)],[plotDataKNE(i,3) plotDataHIP(i,3)], 'Color','magenta','LineWidth', 2,'Marker','.');
        else
            line([plotDataTOE(i,2) plotDataANK(i,2)],[plotDataTOE(i,3) plotDataANK(i,3)],'Marker','.');
            line([plotDataANK(i,2) plotDataKNE(i,2)],[plotDataANK(i,3) plotDataKNE(i,3)],'Marker','.');
            line([plotDataKNE(i,2) plotDataHIP(i,2)],[plotDataKNE(i,3) plotDataHIP(i,3)],'Marker','.');
        end
    end
end
title('Stick Figure Plot');
xlabel('Sampling points');
ylabel('Z-dimension [cm]');
hold off

end

