function reportPlots()
%% Load data
%Needed for Samuele's plots
% LEFT FOOT
leftFoot = true;
HealthySubjectsGaitCyclesLeft = struct();

% Healthy subject
[HealthySubjectsGaitCyclesLeft.Subject1.FLOAT, HealthySubjectsGaitCyclesLeft.Subject1.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2018/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2018/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S1_FLOAT.mat', 'HealthyGaitEvents/2018_S1_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject2.FLOAT, HealthySubjectsGaitCyclesLeft.Subject2.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject2_2018/FLOAT/S2_FLOAT.mat', ...
    'Healthy Recordings/Subject2_2018/NO_FLOAT/S2_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S2_FLOAT.mat', 'HealthyGaitEvents/2018_S2_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject3.FLOAT,HealthySubjectsGaitCyclesLeft.Subject3.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject3_2018/FLOAT/S3_FLOAT.mat', ...
    'Healthy Recordings/Subject3_2018/NO_FLOAT/S3_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S3_FLOAT.mat', 'HealthyGaitEvents/2018_S3_NO_FLOAT.mat', leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject4.FLOAT,HealthySubjectsGaitCyclesLeft.Subject4.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject4_2018/FLOAT/S4_FLOAT.mat', ...
    'Healthy Recordings/Subject4_2018/NO_FLOAT/S4_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S4_FLOAT.mat', 'HealthyGaitEvents/2018_S4_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject5.FLOAT,HealthySubjectsGaitCyclesLeft.Subject5.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject5_2018/FLOAT/S5_FLOAT.mat', ...
    'Healthy Recordings/Subject5_2018/NO_FLOAT/S5_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S5_FLOAT.mat', 'HealthyGaitEvents/2018_S5_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject6.FLOAT,HealthySubjectsGaitCyclesLeft.Subject6.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject6_2018/FLOAT/S6_FLOAT.mat', ...
    'Healthy Recordings/Subject6_2018/NO_FLOAT/S6_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S6_FLOAT.mat', 'HealthyGaitEvents/2018_S6_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject7.FLOAT,HealthySubjectsGaitCyclesLeft.Subject7.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2019/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2019/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S1_FLOAT.mat', 'HealthyGaitEvents/2019_S1_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject8.FLOAT,HealthySubjectsGaitCyclesLeft.Subject8.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject2_2019/FLOAT/S2_FLOAT.mat', ...
    'Healthy Recordings/Subject2_2019/NO_FLOAT/S2_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S2_FLOAT.mat', 'HealthyGaitEvents/2019_S2_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesLeft.Subject9.FLOAT,HealthySubjectsGaitCyclesLeft.Subject9.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject3_2019/FLOAT/S3_FLOAT.mat', ...
     'Healthy Recordings/Subject3_2019/NO_FLOAT/S3_NO_FLOAT.mat',...
     'HealthyGaitEvents/2019_S3_FLOAT.mat', 'HealthyGaitEvents/2019_S3_NO_FLOAT.mat',leftFoot);
 
% SCI subject
[SCI_GaitCycles_Float_Left, SCI_GaitCycles_NoFloat_Left] = SCIsegmentation(leftFoot);

 
% RIGHT FOOT
leftFoot = false;
HealthySubjectsGaitCyclesRight = struct();

% healthy subject

[HealthySubjectsGaitCyclesRight.Subject1.FLOAT, HealthySubjectsGaitCyclesRight.Subject1.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2018/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2018/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S1_FLOAT.mat', 'HealthyGaitEvents/2018_S1_NO_FLOAT.mat',leftFoot);
 
[HealthySubjectsGaitCyclesRight.Subject2.FLOAT, HealthySubjectsGaitCyclesRight.Subject2.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject2_2018/FLOAT/S2_FLOAT.mat', ...
    'Healthy Recordings/Subject2_2018/NO_FLOAT/S2_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S2_FLOAT.mat', 'HealthyGaitEvents/2018_S2_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesRight.Subject3.FLOAT,HealthySubjectsGaitCyclesRight.Subject3.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject3_2018/FLOAT/S3_FLOAT.mat', ...
    'Healthy Recordings/Subject3_2018/NO_FLOAT/S3_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S3_FLOAT.mat', 'HealthyGaitEvents/2018_S3_NO_FLOAT.mat', leftFoot);

[HealthySubjectsGaitCyclesRight.Subject4.FLOAT,HealthySubjectsGaitCyclesRight.Subject4.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject4_2018/FLOAT/S4_FLOAT.mat', ...
    'Healthy Recordings/Subject4_2018/NO_FLOAT/S4_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S4_FLOAT.mat', 'HealthyGaitEvents/2018_S4_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesRight.Subject5.FLOAT,HealthySubjectsGaitCyclesRight.Subject5.NOFLOAT] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject5_2018/FLOAT/S5_FLOAT.mat', ...
    'Healthy Recordings/Subject5_2018/NO_FLOAT/S5_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S5_FLOAT.mat', 'HealthyGaitEvents/2018_S5_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesRight.Subject6.FLOAT,HealthySubjectsGaitCyclesRight.Subject6.NOFLOAT] = HealthySubjectSegmentation('Healthy Recordings/Subject6_2018/FLOAT/S6_FLOAT.mat', ...
    'Healthy Recordings/Subject6_2018/NO_FLOAT/S6_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S6_FLOAT.mat', 'HealthyGaitEvents/2018_S6_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesRight.Subject7.FLOAT,HealthySubjectsGaitCyclesRight.Subject7.NOFLOAT] = HealthySubjectSegmentation('Healthy Recordings/Subject1_2019/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2019/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S1_FLOAT.mat', 'HealthyGaitEvents/2019_S1_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesRight.Subject8.FLOAT,HealthySubjectsGaitCyclesRight.Subject8.NOFLOAT] = HealthySubjectSegmentation('Healthy Recordings/Subject2_2019/FLOAT/S2_FLOAT.mat', ...
    'Healthy Recordings/Subject2_2019/NO_FLOAT/S2_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S2_FLOAT.mat', 'HealthyGaitEvents/2019_S2_NO_FLOAT.mat',leftFoot);

[HealthySubjectsGaitCyclesRight.Subject9.FLOAT,HealthySubjectsGaitCyclesRight.Subject9.NOFLOAT] = HealthySubjectSegmentation('Healthy Recordings/Subject3_2019/FLOAT/S3_FLOAT.mat', ...
     'Healthy Recordings/Subject3_2019/NO_FLOAT/S3_NO_FLOAT.mat',...
     'HealthyGaitEvents/2019_S3_FLOAT.mat', 'HealthyGaitEvents/2019_S3_NO_FLOAT.mat',leftFoot);
 
% SCI subject

[SCI_GaitCycles_Float_Right, SCI_GaitCycles_NoFloat_Right] = SCIsegmentation(leftFoot);


%%
    mkdir('Figures')
    % Boxplots to assess the performance of the algorithm 
    
    [detectionErrorFloat, detectionErrorNoFloat] = calculatePerformance();
    
    %without outliers
    figure()
    hold on
    title('Error in the gait events detection for the FLOAT and NO FLOAT data')
    ylabel('Error in the detection of the gait events')
    group = [ ones(size(detectionErrorFloat')); 2 * ones(size(detectionErrorNoFloat'))];
    bPlot = boxplot([detectionErrorFloat';detectionErrorNoFloat'], group, 'symbol','');
    set(gca, 'XTickLabel', {'Float', 'No Float'})
    ylim([-0.1 1.4]);
    outliers = findobj(bPlot,'Tag','Outliers');
    yy = get(outliers,'YData');
    print('Figures/Performance Box Plot, without outliers', '-dpng')
    
    %with outliers
    figure()
    hold on
    title('Error in the gait events detection for the FLOAT and NO FLOAT data')
    ylabel('Error in the detection of the gait events')
    group = [ ones(size(detectionErrorFloat')); 2 * ones(size(detectionErrorNoFloat'))];
    bPlot = boxplot([detectionErrorFloat';detectionErrorNoFloat'], group);
    set(gca, 'XTickLabel', {'Float', 'No Float'})
    outliers = findobj(bPlot,'Tag','Outliers');
    yy = get(outliers,'YData');
    print('Figures/Performance Box Plot, with outliers', '-dpng')
    
    %% Samuele's plots L/R-TOE Healthy
    PlotSensorHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'LTOE', 1, 'NOFLOAT');
    PlotSensorHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'LTOE', 1, 'FLOAT');
    PlotSensorHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'RTOE', 0, 'NOFLOAT');
    PlotSensorHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'RTOE', 0, 'FLOAT');
    
    %% Samuele's plots L/R-TOE SCI
    plotSensorSCI(SCI_GaitCycles_NoFloat_Left,1, 'LTOE', 1);
    plotSensorSCI(SCI_GaitCycles_Float_Left, 1, 'LTOE', 1);
    plotSensorSCI(SCI_GaitCycles_NoFloat_Left, 1, 'RTOE', 0);
    plotSensorSCI(SCI_GaitCycles_Float_Left, 1, 'RTOE', 0);
    
    %% Samuele's plots Velocity Healthy
    
    % TODO: separe times T01-03
    plotVelocityHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'LTOE', 'NOFLOAT', 1);
    plotVelocityHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'LTOE', 'FLOAT', 1);
    plotVelocityHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'RTOE', 'NOFLOAT', 0);
    plotVelocityHealthy(HealthySubjectsGaitCyclesLeft, 1, 'Subject4', 'RTOE', 'FLOAT', 0);
    
    %% Samuele's plots Velocity SCI
    
    plotVelocitySCI(SCI_GaitCycles_NoFloat_Left, 1, 'LTOE', 1);
    plotVelocitySCI(SCI_GaitCycles_Float_Left, 1, 'LTOE', 1);
    plotVelocitySCI(SCI_GaitCycles_NoFloat_Left, 1, 'RTOE', 0);
    plotVelocitySCI(SCI_GaitCycles_Float_Left, 1, 'RTOE', 0);
end
