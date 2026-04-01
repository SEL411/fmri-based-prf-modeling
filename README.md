# fMRI-based pRF Modeling

This project implements population receptive field (pRF) estimation using fMRI BOLD data.  
The work was conducted during a research internship focused on computational modeling and model evaluation.


## Objective

- Estimate pRF parameters from voxel-level fMRI time-series data  
- Compare model-based and regression-based approaches  
- Evaluate predictive performance on unseen (test) data  


## Methods

- Model-based pRF estimation  
- Regression-based approaches:
  - Lasso (L1 regularization)  
  - Ridge (L2 regularization)  
- Model evaluation using cross-validation and R² metrics  


## My Contribution

- Tuned hyperparameters for Lasso and Ridge regression models  
- Compared model performance using R² on training and test datasets  
- Analyzed trade-offs between interpretability (Lasso) and generalization (Ridge)  
- Evaluated model fit using both quantitative metrics and qualitative comparison with BOLD signals  


## Results

- Model-based approach achieved the highest R² performance  
- Lasso produced predictions most similar in shape to the observed BOLD signal  
- Ridge showed more stable generalization across datasets  
- Trade-offs observed between accuracy, interpretability, and robustness  



## Files

- `prf_modeling_analysis.m`  
  Main analysis script for pRF estimation and model comparison  

- `report.pdf`  
  Detailed analysis, results, and interpretation of model performance  



## Notes

- Core modeling framework was provided as part of a research internship  
- Analysis, parameter tuning, and model evaluation were independently conducted  
- Implemented in MATLAB using fMRI BOLD time-series data  
