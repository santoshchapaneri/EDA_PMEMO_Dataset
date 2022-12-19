
Arousal = [];
for i = 1:length(musicId)
    idx = find(musicId_A == musicId(i));
    Arousal = [Arousal mean_A(idx)];
end

Valence = [];
for i = 1:length(musicId)
    idx = find(musicId_V == musicId(i));
    Valence = [Valence mean_V(idx)];
end