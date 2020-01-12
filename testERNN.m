clear;
% Note: this code should be run from orca/src/code-examples
addpath ../Algorithms/
addpath ../Measures/
addpath ../Utils/
% Load the different partitions of the dataset
train_toy = load('../../exampledata/1-holdout/toy/matlab/train_toy.0');
test_toy = load('../../exampledata/1-holdout/toy/matlab/test_toy.0');

% "patterns" refers to the input variables and targets to the output one
train.patterns = train_toy(:,1:end-1);
train.targets = train_toy(:,end);
test.patterns = test_toy(:,1:end-1);
test.targets = test_toy(:,end);

[train.patterns, trainMeans, trainStds] = DataSet.standarizeFunction(train.patterns);
[test.patterns] = DataSet.standarizeFunction(test.patterns, trainMeans, trainStds);

% Create the algorithm object
ERNNAlgorithm = ERNN('classifier','ordinal','activationFunction','rbf', ...
                     'FitnessFunction', 'wrmse');

% Alternative with nominal model and sigmoid function
%clear ERNNAlgorithm;
%ERNNAlgorithm = ERNN('classifier','nominal','activationFunction','sig');

param.hiddenN = 20;

% Running the algorithm
info = ERNNAlgorithm.runAlgorithm(train,test,param);

accTrain = sum(train.targets==info.predictedTrain)/size(train.targets,1);
accTest = sum(test.targets==info.predictedTest)/size(test.targets,1);

% Reporting accuracy
fprintf('Accuracy Train %f, Accuracy Test %f\n',accTrain,accTest);



