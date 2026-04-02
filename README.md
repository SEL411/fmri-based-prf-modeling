# fMRI-based pRF Modeling Comparison

This project explores population receptive field (pRF) estimation using fMRI BOLD data within a computational modeling framework.  
It was conducted during a research internship focusing on model evaluation and parameter tuning.

---

## Objective

- Estimate pRF parameters from voxel-level fMRI time-series data  
- Compare model-based and regression-based approaches  
- Evaluate predictive performance on unseen (test) data  

---

## Methods

pRF parameters were estimated from fMRI BOLD time-series data using two approaches:

- Model-based method (Dumoulin & Wandell, 2008)
- Regression-based methods:
  - Lasso (L1 regularization)
  - Ridge (L2 regularization)

Model performance was evaluated using R² on both training and test datasets to assess predictive accuracy and generalization.

## Results

### pRF Model Comparison

Three models were evaluated using both training and test datasets:

- Model-based  
- Lasso (L1 regularization)  
- Ridge (L2 regularization)  

#### Performance (R²)

| Model       | Training R² | Test R² | Gap (Train - Test) |
|-------------|-------------|---------|--------------------|
| Model-based | —           | 0.409   | —                  |
| Lasso       | 0.504       | 0.380   | 0.124              |
| Ridge       | 0.402       | 0.362   | 0.040              |

#### Interpretation

**Test dataset**

- The model-based approach achieved the highest predictive accuracy.
- Lasso produced predictions most similar in shape to the observed BOLD signal.
- Ridge showed smoother responses with reduced amplitude.

**Training vs. Test comparison**

- Lasso showed the largest performance gap, indicating potential overfitting.
- Ridge demonstrated a smaller gap, suggesting more stable generalization.

#### Conclusion

- Model-based → best predictive accuracy (test set)  
- Lasso → better interpretability but higher risk of overfitting  
- Ridge → more stable generalization across datasets 

---

## My Contribution

- Set regularization hyperparameters (λ) for Lasso and Ridge models  
- Evaluated model performance using R² on both training and test datasets  
- Analyzed trade-offs between interpretability (Lasso) and generalization (Ridge)  
- Performed both quantitative evaluation and qualitative comparison with observed BOLD signals    

---

## Files

- `prf_modeling_analysis.m`  
  Script for configuring regularization parameters (Lasso, Ridge) within the pRF framework  

---

## Notes

- Core modeling framework was provided as part of a research internship  
- Analysis, parameter tuning, and model evaluation were independently conducted  
- Implemented in MATLAB using fMRI BOLD time-series data  
