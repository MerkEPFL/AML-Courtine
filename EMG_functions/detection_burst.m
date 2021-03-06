function [onset_index,offset_index] = detection_burst(env_EMG)
% Detection of bursts 

window = 250;

onset_index=[];
offset_index=[];
fields = fieldnames(env_EMG);

for i = 1:length(fields) % for each gait cycle
    
    % detection of onsets and offsets
    [onset_index.(fields{i}).EMG.LMG,offset_index.(fields{i}).EMG.LMG] = detect(env_EMG.(fields{i}).EMG.LMG);
    [onset_index.(fields{i}).EMG.RMG,offset_index.(fields{i}).EMG.RMG] = detect(env_EMG.(fields{i}).EMG.RMG);
    [onset_index.(fields{i}).EMG.LTA,offset_index.(fields{i}).EMG.LTA] = detect(env_EMG.(fields{i}).EMG.LTA);
    [onset_index.(fields{i}).EMG.RTA,offset_index.(fields{i}).EMG.RTA] = detect(env_EMG.(fields{i}).EMG.RTA);

    % merging bursts that are less than 250 samples apart
    [onset_index.(fields{i}).EMG.LMG,offset_index.(fields{i}).EMG.LMG] = clean(onset_index.(fields{i}).EMG.LMG,offset_index.(fields{i}).EMG.LMG,window);
    [onset_index.(fields{i}).EMG.RMG,offset_index.(fields{i}).EMG.RMG] = clean(onset_index.(fields{i}).EMG.RMG,offset_index.(fields{i}).EMG.RMG,window);
    [onset_index.(fields{i}).EMG.LTA,offset_index.(fields{i}).EMG.LTA] = clean(onset_index.(fields{i}).EMG.LTA,offset_index.(fields{i}).EMG.LTA,window);
    [onset_index.(fields{i}).EMG.RTA,offset_index.(fields{i}).EMG.RTA] = clean(onset_index.(fields{i}).EMG.RTA,offset_index.(fields{i}).EMG.RTA,window);


end

end

