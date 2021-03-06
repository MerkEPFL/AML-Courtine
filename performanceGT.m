
clear all
close all

%% Load data

GT_HP1_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S1_FLOAT.mat']);
GT_HP2_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S2_FLOAT.mat']);
GT_HP3_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S3_FLOAT.mat']);
GT_HP4_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S4_FLOAT.mat']);
GT_HP5_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S5_FLOAT.mat']);
GT_HP6_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S6_FLOAT.mat']);
GT_HP7_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_S1_FLOAT.mat']);
GT_HP8_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_S2_FLOAT.mat']);
GT_HP9_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_S3_FLOAT.mat']);
GT_SCI_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_SCI_FLOAT.mat']);

GT_HP1_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S1_NO_FLOAT.mat']);
GT_HP2_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S2_NO_FLOAT.mat']);
GT_HP3_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S3_NO_FLOAT.mat']);
GT_HP4_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S4_NO_FLOAT.mat']);
GT_HP5_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S5_NO_FLOAT.mat']);
GT_HP6_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2018_S6_NO_FLOAT.mat']);
GT_HP8_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_S2_NO_FLOAT.mat']);
GT_HP9_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_S3_NO_FLOAT.mat']);
GT_SCI_NO_FLOAT = load([pwd,'/GroundTruthBurstsLeft/2019_SCI_NO_FLOAT.mat']);

%% 
leftFoot = true;  % type of segmentation used

% SCI data
[SCI_GaitCycles_Float, SCI_GaitCycles_noFloat] = SCIsegmentation(leftFoot);

% Healthy data
[GaitCyclesFloat1,GaitCyclesNoFloat1] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2018/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2018/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S1_FLOAT.mat', 'HealthyGaitEvents/2018_S1_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat2,GaitCyclesNoFloat2] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject2_2018/FLOAT/S2_FLOAT.mat', ...
    'Healthy Recordings/Subject2_2018/NO_FLOAT/S2_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S2_FLOAT.mat', 'HealthyGaitEvents/2018_S2_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat3,GaitCyclesNoFloat3] = ...
     HealthySubjectSegmentation('Healthy Recordings/Subject3_2018/FLOAT/S3_FLOAT.mat', ...
    'Healthy Recordings/Subject3_2018/NO_FLOAT/S3_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S3_FLOAT.mat', 'HealthyGaitEvents/2018_S3_NO_FLOAT.mat', leftFoot);

[GaitCyclesFloat4,GaitCyclesNoFloat4] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject4_2018/FLOAT/S4_FLOAT.mat', ...
    'Healthy Recordings/Subject4_2018/NO_FLOAT/S4_NO_FLOAT.mat', ...
    'HealthyGaitEvents/2018_S4_FLOAT.mat', 'HealthyGaitEvents/2018_S4_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat5,GaitCyclesNoFloat5] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject5_2018/FLOAT/S5_FLOAT.mat', ...
    'Healthy Recordings/Subject5_2018/NO_FLOAT/S5_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S5_FLOAT.mat', 'HealthyGaitEvents/2018_S5_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat6,GaitCyclesNoFloat6] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject6_2018/FLOAT/S6_FLOAT.mat', ...
    'Healthy Recordings/Subject6_2018/NO_FLOAT/S6_NO_FLOAT.mat',...
    'HealthyGaitEvents/2018_S6_FLOAT.mat', 'HealthyGaitEvents/2018_S6_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat7,GaitCyclesNoFloat7] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject1_2019/FLOAT/S1_FLOAT.mat', ...
    'Healthy Recordings/Subject1_2019/NO_FLOAT/S1_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S1_FLOAT.mat', 'HealthyGaitEvents/2019_S1_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat8,GaitCyclesNoFloat8] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject2_2019/FLOAT/S2_FLOAT.mat', ...
    'Healthy Recordings/Subject2_2019/NO_FLOAT/S2_NO_FLOAT.mat',...
    'HealthyGaitEvents/2019_S2_FLOAT.mat', 'HealthyGaitEvents/2019_S2_NO_FLOAT.mat',leftFoot);

[GaitCyclesFloat9,GaitCyclesNoFloat9] = ...
    HealthySubjectSegmentation('Healthy Recordings/Subject3_2019/FLOAT/S3_FLOAT.mat', ...
     'Healthy Recordings/Subject3_2019/NO_FLOAT/S3_NO_FLOAT.mat',...
     'HealthyGaitEvents/2019_S3_FLOAT.mat', 'HealthyGaitEvents/2019_S3_NO_FLOAT.mat',leftFoot);

 
%% EMG enveloppe 

% SCI data
[env_SCI_float2] = enveloppe_EMG(SCI_GaitCycles_Float);
[env_SCI_nofloat2] = enveloppe_EMG(SCI_GaitCycles_noFloat);

% Healthy data float
[env_HP1_float2] = enveloppe_EMG(GaitCyclesFloat1);
[env_HP2_float2] = enveloppe_EMG(GaitCyclesFloat2);
[env_HP3_float2] = enveloppe_EMG(GaitCyclesFloat3);
[env_HP4_float2] = enveloppe_EMG(GaitCyclesFloat4);
[env_HP5_float2] = enveloppe_EMG(GaitCyclesFloat5);
[env_HP6_float2] = enveloppe_EMG(GaitCyclesFloat6);
[env_HP7_float2] = enveloppe_EMG(GaitCyclesFloat7);
[env_HP8_float2] = enveloppe_EMG(GaitCyclesFloat8);
[env_HP9_float2] = enveloppe_EMG(GaitCyclesFloat9);

% Healthy data no float
[env_HP1_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat1);
[env_HP2_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat2);
[env_HP3_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat3);
[env_HP4_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat4);
[env_HP5_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat5);
[env_HP6_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat6);
[env_HP7_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat7);
[env_HP8_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat8);
[env_HP9_nofloat2] = enveloppe_EMG(GaitCyclesNoFloat9);

%% Automatic EMG Onset & Offset Detection 

% SCI data
[onset_SCI_float2,offset_SCI_float2]=detection_burst(env_SCI_float2);
[onset_SCI_nofloat2,offset_SCI_nofloat2]=detection_burst(env_SCI_nofloat2);

% Healthy data no float
[onset_HP1_nofloat2,offset_HP1_nofloat2]=detection_burst(env_HP1_nofloat2);
[onset_HP2_nofloat2,offset_HP2_nofloat2]=detection_burst(env_HP2_nofloat2);
[onset_HP3_nofloat2,offset_HP3_nofloat2]=detection_burst(env_HP3_nofloat2);
[onset_HP4_nofloat2,offset_HP4_nofloat2]=detection_burst(env_HP4_nofloat2);
[onset_HP5_nofloat2,offset_HP5_nofloat2]=detection_burst(env_HP5_nofloat2);
[onset_HP6_nofloat2,offset_HP6_nofloat2]=detection_burst(env_HP6_nofloat2);
[onset_HP8_nofloat2,offset_HP8_nofloat2]=detection_burst(env_HP8_nofloat2);
[onset_HP9_nofloat2,offset_HP9_nofloat2]=detection_burst(env_HP9_nofloat2);

% Healthy data float 
[onset_HP1_float2,offset_HP1_float2]=detection_burst(env_HP1_float2);
[onset_HP2_float2,offset_HP2_float2]=detection_burst(env_HP2_float2);
[onset_HP3_float2,offset_HP3_float2]=detection_burst(env_HP3_float2);
[onset_HP4_float2,offset_HP4_float2]=detection_burst(env_HP4_float2);
[onset_HP5_float2,offset_HP5_float2]=detection_burst(env_HP5_float2);
[onset_HP6_float2,offset_HP6_float2]=detection_burst(env_HP6_float2);
[onset_HP7_float2,offset_HP7_float2]=detection_burst(env_HP7_float2);
[onset_HP8_float2,offset_HP8_float2]=detection_burst(env_HP8_float2); 
[onset_HP9_float2,offset_HP9_float2]=detection_burst(env_HP9_float2);

clear env_HP1_float1 env_HP1_nofloat1 env_HP2_float2 env_HP2_nofloat2 env_HP3_float2 env_HP3_nofloat2 ...
     env_HP4_float2 env_HP4_nofloat2 env_HP5_float2 env_HP5_nofloat2 env_HP6_float2 env_HP6_nofloat2 ...
     env_HP7_float2 env_HP7_nofloat2 env_HP8_float2 env_HP8_nofloat2 env_HP1_float9 env_HP1_nofloat9
 
 %% Counting GT Nb Bursts
 
 count = 0;
 
 count = count + count_bursts(onset_SCI_float2,offset_SCI_float2);
 count = count + count_bursts(onset_SCI_nofloat2,offset_SCI_nofloat2);

 count = count + count_bursts(onset_HP2_nofloat2,offset_HP2_nofloat2);
 count = count + count_bursts(onset_HP3_nofloat2,offset_HP3_nofloat2);
 count = count + count_bursts(onset_HP4_nofloat2,offset_HP4_nofloat2);
 count = count + count_bursts(onset_HP5_nofloat2,offset_HP5_nofloat2);
 count = count + count_bursts(onset_HP6_nofloat2,offset_HP6_nofloat2);
 count = count + count_bursts(onset_HP8_nofloat2,offset_HP8_nofloat2);
 count = count + count_bursts(onset_HP9_nofloat2,offset_HP9_nofloat2);
 
 count = count + count_bursts(onset_HP1_float2,offset_HP1_float2);
 count = count + count_bursts(onset_HP3_float2,offset_HP3_float2);
 count = count + count_bursts(onset_HP4_float2,offset_HP4_float2);
 count = count + count_bursts(onset_HP5_float2,offset_HP5_float2);
 count = count + count_bursts(onset_HP6_float2,offset_HP6_float2);
 count = count + count_bursts(onset_HP7_float2,offset_HP7_float2);
 count = count + count_bursts(onset_HP8_float2,offset_HP8_float2);
 count = count + count_bursts(onset_HP9_float2,offset_HP9_float2);
 
 %% Count How many bursts are correctly detected
 
 detected = 0;
 
 detected = detected + count_burstsdetected(onset_SCI_float2,offset_SCI_float2,GT_SCI_FLOAT);
 detected = detected + count_burstsdetected(onset_SCI_nofloat2,offset_SCI_nofloat2,GT_SCI_NO_FLOAT);

 detected = detected + count_burstsdetected(onset_HP2_nofloat2,offset_HP2_nofloat2,GT_HP2_NO_FLOAT);
 detected = detected + count_burstsdetected(onset_HP3_nofloat2,offset_HP3_nofloat2,GT_HP3_NO_FLOAT);
 detected = detected + count_burstsdetected(onset_HP4_nofloat2,offset_HP4_nofloat2,GT_HP4_NO_FLOAT);
 detected = detected + count_burstsdetected(onset_HP5_nofloat2,offset_HP5_nofloat2,GT_HP5_NO_FLOAT);
 detected = detected + count_burstsdetected(onset_HP6_nofloat2,offset_HP6_nofloat2,GT_HP6_NO_FLOAT);
 detected = detected + count_burstsdetected(onset_HP8_nofloat2,offset_HP8_nofloat2,GT_HP8_NO_FLOAT);
 detected = detected + count_burstsdetected(onset_HP9_nofloat2,offset_HP9_nofloat2,GT_HP9_NO_FLOAT);
 
 detected = detected + count_burstsdetected(onset_HP1_float2,offset_HP1_float2,GT_HP1_FLOAT);
 detected = detected + count_burstsdetected(onset_HP3_float2,offset_HP3_float2,GT_HP3_FLOAT);
 detected = detected + count_burstsdetected(onset_HP4_float2,offset_HP4_float2,GT_HP4_FLOAT);
 detected = detected + count_burstsdetected(onset_HP5_float2,offset_HP5_float2,GT_HP5_FLOAT);
 detected = detected + count_burstsdetected(onset_HP6_float2,offset_HP6_float2,GT_HP6_FLOAT);
 detected = detected + count_burstsdetected(onset_HP8_float2,offset_HP8_float2,GT_HP8_FLOAT);
 detected = detected + count_burstsdetected(onset_HP9_float2,offset_HP9_float2,GT_HP9_FLOAT);
 
 %% Measure Performance
 
 perf = detected / count;