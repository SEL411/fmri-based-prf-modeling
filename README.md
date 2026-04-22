# Evaluating Regularization in pRF Estimation from fMRI Data

This project examines how different modeling approaches affect population receptive field (pRF) estimation from fMRI BOLD time-series data.  
The analysis focuses on comparing model-based estimation with regularized regression methods, with an emphasis on interpretability and generalization.

---

## Objective

The goal of this study is to understand how L1 (Lasso) and L2 (Ridge) regularization influence pRF estimation compared to a standard model-based approach.

Specifically, this project explores:

- How predictive performance differs across methods  
- How regularization affects overfitting and generalization  
- The trade-off between signal interpretability and stability  

---

## Methods

pRF parameters were estimated from voxel-level fMRI BOLD time-series data using three approaches:

- Model-based method (Dumoulin & Wandell, 2008)  
- Lasso regression (L1 regularization)  
- Ridge regression (L2 regularization)  

For regression models:

- Regularization parameters were empirically tuned based on observed model behavior  
  - Lasso: λ = 0.01  
  - Ridge: λ = 10  

Model performance was evaluated using R² on both training and test datasets.

---

## Results

### Model Performance (R²)

| Model       | Training R² | Test R² | Gap (Train - Test) |
|-------------|-------------|---------|--------------------|
| Model-based | —           | 0.409   | —                  |
| Lasso       | 0.504       | 0.380   | 0.124              |
| Ridge       | 0.402       | 0.362   | 0.040              |

### Key Observations

- The model-based approach achieved the highest predictive accuracy on the test set.  
- Lasso produced predictions that more closely matched the shape of the observed BOLD signal.  
- Ridge showed smoother responses with reduced amplitude.

### Generalization

- Lasso exhibited the largest train–test gap, suggesting sensitivity to training data and potential overfitting.  
- Ridge showed a smaller gap, indicating more stable generalization across datasets.

---

## Discussion

This comparison highlights a trade-off between interpretability and generalization in pRF estimation:

- **Lasso (L1)** enforces sparsity, which may help identify dominant channels contributing to the signal.  
  However, this sparsity may also lead to overfitting when the underlying neural response is not strictly sparse.

- **Ridge (L2)** distributes weights more smoothly, which may better reflect distributed neural activity,  
  resulting in more stable generalization.

- **Model-based approaches** provide the strongest predictive accuracy, but rely on predefined assumptions  
  about the shape of the receptive field.

These results suggest that the choice of method depends on the goal of the analysis:
- maximizing predictive accuracy  
- interpretability of contributing features  
- or robustness to new data  

---

## My Contribution

- Implemented and compared Lasso and Ridge regression within a pRF modeling framework  
- Selected regularization parameters (λ) and evaluated their impact on model performance  
- Assessed generalization using train–test R² comparison  
- Interpreted model behavior in terms of overfitting, sparsity, and signal representation  

---

## Files

- `prf_parameter_setting.m`  
  MATLAB script for regression-based pRF estimation and evaluation  

---

## Notes

- Core modeling framework and dataset were provided as part of a research internship  
- Analysis, parameter selection, and interpretation were conducted independently  
