function [count1] = count_burstsdetected(onsets,offsets, GT)
% Count the number of true positives
% Returnss an integer

fields = fieldnames(onsets);
count1 = 0;
limit = 200;   % marge d'erreur pour les onsets et offsets


for i = 1:length(fields)  % for all gait
    fields2 = fieldnames(onsets.(fields{i}).EMG);
    for j = 1:length(fields2)   % for all muscles
        
        onset_GT = GT.Onsets.(fields{i}).EMG.(fields2{j});
        offset_GT = GT.Offsets.(fields{i}).EMG.(fields2{j}); 
        
        onset = onsets.(fields{i}).EMG.(fields2{j});
        offset = offsets.(fields{i}).EMG.(fields2{j}); 
        
        % if no humans erros were made in GT 
        if length(onset_GT) == length(offset_GT)
            for l = 1:length(onset_GT)
 
                remaining_onset = onset( onset > (onset_GT(l) - limit) &  onset < (onset_GT(l) + limit));
                remaining_offset = offset( offset > (offset_GT(l) - limit) & offset < (offset_GT(l) + limit));
                
                if length(remaining_onset) == length(remaining_offset)          
                      count1  = count1 + length(remaining_onset);
                end
            end
        else  % if human errors
            if length(onset_GT) > length(offset_GT)
                for l = 1:length(onset_GT)
                    remaining_onset = onset( onset > (onset_GT(l) - limit) & onset < (onset_GT(l) + limit));   
                    count1  = count1 + length(remaining_onset);
                end
            else
                for l = 1:length(offset_GT)                   
                    remaining_offset = offset(offset > (offset_GT(l) - limit) & offset < (offset_GT(l) + limit));   
                    count1  = count1 + length(remaining_offset);
                end
            end
        end  
    end
    
end
end


