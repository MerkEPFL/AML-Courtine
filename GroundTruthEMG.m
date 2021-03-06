function GroundTruthEMG(leftFoot)

% leftFoot indicates which foot is used for the gait cycles segmentation

% for each subject, segments the data (EMG signals, kinematics signals, 
% sampling frequencies, gait events) into gait cycles, using the left foot
% or the right foot as the reference foot for the gait cycles boundaries
% using HealthySubjectSegmentation or SCIsegmentation

% detects manually for each gait cycle the onset and offset of the bursts of EMG
% activities with GroundTruthToolEMG for FLOAT and NO FLOAT for each
% subject

if leftFoot % reference foot is the left foot
    
    % HEALTHY

    [GaitCyclesFloat1,GaitCyclesNoFloat1] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2018/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2018/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S1_FLOAT.mat', 'HealthyGaitEvents/2018_S1_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat1,'/GroundTruthBurstsLeft/2018_S1_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat1,'/GroundTruthBurstsLeft/2018_S1_NO_FLOAT.mat');

    [GaitCyclesFloat2, GaitCyclesNoFloat2] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject2_2018/FLOAT/S2_FLOAT.mat', ...
        'Healthy Recordings/Subject2_2018/NO_FLOAT/S2_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2018_S2_FLOAT.mat', 'HealthyGaitEvents/2018_S2_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat2,'/GroundTruthBurstsLeft/2018_S2_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat2,'/GroundTruthBurstsLeft/2018_S2_NO_FLOAT.mat');

    [GaitCyclesFloat3,GaitCyclesNoFloat3] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject3_2018/FLOAT/S3_FLOAT.mat', ...
        'Healthy Recordings/Subject3_2018/NO_FLOAT/S3_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2018_S3_FLOAT.mat', 'HealthyGaitEvents/2018_S3_NO_FLOAT.mat', leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat3,'/GroundTruthBurstsLeft/2018_S3_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat3,'/GroundTruthBurstsLeft/2018_S3_NO_FLOAT.mat');

    [GaitCyclesFloat4,GaitCyclesNoFloat4] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject4_2018/FLOAT/S4_FLOAT.mat', ...
        'Healthy Recordings/Subject4_2018/NO_FLOAT/S4_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2018_S4_FLOAT.mat', 'HealthyGaitEvents/2018_S4_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat4,'/GroundTruthBurstsLeft/2018_S4_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat4,'/GroundTruthBurstsLeft/2018_S4_NO_FLOAT.mat');

    [GaitCyclesFloat5,GaitCyclesNoFloat5] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject5_2018/FLOAT/S5_FLOAT.mat', ...
        'Healthy Recordings/Subject5_2018/NO_FLOAT/S5_NO_FLOAT.mat',...
        'HealthyGaitEvents/2018_S5_FLOAT.mat', 'HealthyGaitEvents/2018_S5_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat5,'/GroundTruthBurstsLeft/2018_S5_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat5,'/GroundTruthBurstsLeft/2018_S5_NO_FLOAT.mat');

    [GaitCyclesFloat6,GaitCyclesNoFloat6] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject6_2018/FLOAT/S6_FLOAT.mat', ...
        'Healthy Recordings/Subject6_2018/NO_FLOAT/S6_NO_FLOAT.mat',...
        'HealthyGaitEvents/2018_S6_FLOAT.mat', 'HealthyGaitEvents/2018_S6_NO_FLOAT.mat',leftFoot); 

    GroundTruthToolEMG(GaitCyclesFloat6,'/GroundTruthBurstsLeft/2018_S6_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat6,'/GroundTruthBurstsLeft/2018_S6_NO_FLOAT.mat');

    [GaitCyclesFloat7,GaitCyclesNoFloat7] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2019/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2019/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S1_FLOAT.mat', 'HealthyGaitEvents/2019_S1_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat7,'/GroundTruthBurstsLeft/2019_S1_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat7,'/GroundTruthBurstsLeft/2019_S1_NO_FLOAT.mat'); 

    [GaitCyclesFloat8, GaitCyclesNoFloat8] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject2_2019/FLOAT/S2_FLOAT.mat', ...
        'Healthy Recordings/Subject2_2019/NO_FLOAT/S2_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2019_S2_FLOAT.mat', 'HealthyGaitEvents/2019_S2_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat8,'/GroundTruthBurstsLeft/2019_S2_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat8,'/GroundTruthBurstsLeft/2019_S2_NO_FLOAT.mat');

    [GaitCyclesFloat9,GaitCyclesNoFloat9] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject3_2019/FLOAT/S3_FLOAT.mat', ...
        'Healthy Recordings/Subject3_2019/NO_FLOAT/S3_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2019_S3_FLOAT.mat', 'HealthyGaitEvents/2019_S3_NO_FLOAT.mat', leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat9,'/GroundTruthBurstsLeft/2019_S3_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat9,'/GroundTruthBurstsLeft/2019_S3_NO_FLOAT.mat');

    % SCI

    [GaitCyclesFloat10,GaitCyclesNoFloat10] = SCIsegmentation(leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat10,'/GroundTruthBurstsLeft/2019_SCI_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat10,'/GroundTruthBurstsLeft/2019_SCI_NO_FLOAT.mat');

else % reference foot is the right foot
    
    [GaitCyclesFloat1,GaitCyclesNoFloat1] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2018/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2018/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S1_FLOAT.mat', 'HealthyGaitEvents/2018_S1_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat1,'/GroundTruthBurstsRight/2018_S1_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat1,'/GroundTruthBurstsRight/2018_S1_NO_FLOAT.mat');

    [GaitCyclesFloat2, GaitCyclesNoFloat2] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject2_2018/FLOAT/S2_FLOAT.mat', ...
        'Healthy Recordings/Subject2_2018/NO_FLOAT/S2_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2018_S2_FLOAT.mat', 'HealthyGaitEvents/2018_S2_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat2,'/GroundTruthBurstsRight/2018_S2_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat2,'/GroundTruthBurstsRight/2018_S2_NO_FLOAT.mat');

    [GaitCyclesFloat3,GaitCyclesNoFloat3] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject3_2018/FLOAT/S3_FLOAT.mat', ...
        'Healthy Recordings/Subject3_2018/NO_FLOAT/S3_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2018_S3_FLOAT.mat', 'HealthyGaitEvents/2018_S3_NO_FLOAT.mat', leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat3,'/GroundTruthBurstsRight/2018_S3_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat3,'/GroundTruthBurstsRight/2018_S3_NO_FLOAT.mat');

    [GaitCyclesFloat4,GaitCyclesNoFloat4] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject4_2018/FLOAT/S4_FLOAT.mat', ...
        'Healthy Recordings/Subject4_2018/NO_FLOAT/S4_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2018_S4_FLOAT.mat', 'HealthyGaitEvents/2018_S4_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat4,'/GroundTruthBurstsRight/2018_S4_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat4,'/GroundTruthBurstsRight/2018_S4_NO_FLOAT.mat');

    [GaitCyclesFloat5,GaitCyclesNoFloat5] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject5_2018/FLOAT/S5_FLOAT.mat', ...
        'Healthy Recordings/Subject5_2018/NO_FLOAT/S5_NO_FLOAT.mat',...
        'HealthyGaitEvents/2018_S5_FLOAT.mat', 'HealthyGaitEvents/2018_S5_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat5,'/GroundTruthBurstsRight/2018_S5_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat5,'/GroundTruthBurstsRight/2018_S5_NO_FLOAT.mat');

    [GaitCyclesFloat6,GaitCyclesNoFloat6] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject6_2018/FLOAT/S6_FLOAT.mat', ...
        'Healthy Recordings/Subject6_2018/NO_FLOAT/S6_NO_FLOAT.mat',...
        'HealthyGaitEvents/2018_S6_FLOAT.mat', 'HealthyGaitEvents/2018_S6_NO_FLOAT.mat',leftFoot); 

    GroundTruthToolEMG(GaitCyclesFloat6,'/GroundTruthBurstsRight/2018_S6_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat6,'/GroundTruthBurstsRight/2018_S6_NO_FLOAT.mat');

    [GaitCyclesFloat7,GaitCyclesNoFloat7] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2019/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2019/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S1_FLOAT.mat', 'HealthyGaitEvents/2019_S1_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat7,'/GroundTruthBurstsRight/2019_S1_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat7,'/GroundTruthBurstsRight/2019_S1_NO_FLOAT.mat'); 

    [GaitCyclesFloat8, GaitCyclesNoFloat8] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject2_2019/FLOAT/S2_FLOAT.mat', ...
        'Healthy Recordings/Subject2_2019/NO_FLOAT/S2_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2019_S2_FLOAT.mat', 'HealthyGaitEvents/2019_S2_NO_FLOAT.mat',leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat8,'/GroundTruthBurstsRight/2019_S2_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat8,'/GroundTruthBurstsRight/2019_S2_NO_FLOAT.mat');

    [GaitCyclesFloat9,GaitCyclesNoFloat9] = ...
        HealthySubjectSegmentation('Healthy Recordings/Subject3_2019/FLOAT/S3_FLOAT.mat', ...
        'Healthy Recordings/Subject3_2019/NO_FLOAT/S3_NO_FLOAT.mat', ...
        'HealthyGaitEvents/2019_S3_FLOAT.mat', 'HealthyGaitEvents/2019_S3_NO_FLOAT.mat', leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat9,'/GroundTruthBurstsRight/2019_S3_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat9,'/GroundTruthBurstsRight/2019_S3_NO_FLOAT.mat');

    % SCI

    [GaitCyclesFloat10,GaitCyclesNoFloat10] = SCIsegmentation(leftFoot);

    GroundTruthToolEMG(GaitCyclesFloat10,'/GroundTruthBurstsRight/2019_SCI_FLOAT.mat');
    GroundTruthToolEMG(GaitCyclesNoFloat10,'/GroundTruthBurstsRight/2019_SCI_NO_FLOAT.mat');    
   
end
    

end


