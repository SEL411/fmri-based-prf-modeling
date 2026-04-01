% regularization_analysis.m
%
% Applies Lasso and Ridge regression to pRF predictor matrix

% Prepare data
X = regM';
y = obsTS_train(:);

%% Ridge regression
lambda_ridge = 10;
W_ridge = ridge(y, X, lambda_ridge);

%% Lasso regression
lambda_lasso = 0.01;
W_lasso = lasso(X, y, 'Lambda', lambda_lasso);