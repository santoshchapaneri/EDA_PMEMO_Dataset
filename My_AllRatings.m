% Collect all Valence and Arousal ratings of PMEMO dataset
clc; clear;

%% Collect all songs in arousal folder
ArousalPath = 'D:\MusicPhD\2018\Dataset_PMEmo\pmemo_dataset\PMEmo\Annotations\Arousal\';
ValencePath = 'D:\MusicPhD\2018\Dataset_PMEmo\pmemo_dataset\PMEmo\Annotations\Valence\';
names_A = dir(fullfile(ArousalPath,'*.csv'));
names_A = {names_A(~[names_A.isdir]).name};
[namesSorted_A,~] = sort_nat(names_A);
names_V = dir(fullfile(ValencePath,'*.csv'));
names_V = {names_V(~[names_V.isdir]).name};
[namesSorted_V,~] = sort_nat(names_V);

ratings_A = []; ratings_V = [];
for i = 1:numel(names_A)
    i
    fullpath_A = [ArousalPath namesSorted_A{i}];
    fullpath_V = [ValencePath namesSorted_V{i}];
    T_A = importdata(fullpath_A);
    T_V = importdata(fullpath_V);
    ratings_A = [ratings_A; T_A.data(:,2)];
    ratings_V = [ratings_V; T_V.data(:,2)];
end