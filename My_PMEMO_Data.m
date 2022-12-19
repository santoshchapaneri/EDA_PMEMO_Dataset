Feats = importdata('static_features.csv');
load('PMEMO_Ann.mat');

% 1st column is music ID, other columns are 6373 features
numSongs = 761;
numFeats = 6373;
Feat_Data = zeros(numSongs, numFeats);
musicId_Feats = zeros(numSongs,1);

idx_Feats = Feats.data(:,1);
[v,idx_sorted] = sort(idx);

for i = 1:numSongs
    idx = find(musicId(i) == idx_Feats);
    Feat_Data(i,:) = Feats.data(idx,2:end);
end

Valence = Valence';
Arousal = Arousal';

save('PMEMO_Data.mat','Feat_Data','musicId','Valence','Arousal');

% Save it to csv
Data = [musicId Valence Arousal Feat_Data];
csvwrite('PMEMO_XY.csv',Data);