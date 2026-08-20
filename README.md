# The Role of Climate Forecasts in Shaping Adaptation Behaviour

## Overview

This repository contains the research paper and supplementary materials for a cross-country study investigating how climate forecasts influence adaptive behavior among individuals in climate-sensitive regions.

**Authors:** Fareed Ahmad, Mwita Chacha, Obodo Lotachi, Ereny Badie, Aiken Alvaro

**Study Period:** Cross-sectional survey (2024-2025)

**Countries:** India, Kenya, Egypt, Indonesia, Nigeria, Japan

---

## 📋 Table of Contents

- [Study Abstract](#study-abstract)
- [Key Findings](#key-findings)
- [Methodology](#methodology)
- [Repository Structure](#repository-structure)
- [Data](#data)
- [How to Use](#how-to-use)
- [Citation](#citation)
- [License](#license)

---

## Study Abstract

Climate change presents considerable global threats, particularly in regions dependent on climate-sensitive livelihoods. While advances in climate forecasting have improved information availability and accuracy, a persistent gap remains between information access and actual adaptive behavior. 

This study investigates behavioral mechanisms translating climate forecasts into adaptive action using a cross-country survey of **309 respondents** across six countries. Using quantitative methods (descriptive statistics, Spearman's correlation, and multiple linear regression), we examined how:

- **Access to Climate Forecast Information (ACF)**
- **Trust in Climate Information (TCI)**  
- **Climate Risk Perception (CRP)**

...shape **Climate Adaptation Behaviour (CAB)**.

### Key Result

Respondents demonstrated a pronounced **perception-action gap**: Climate risk perception was high (mean = 4.09) while adaptation behavior remained moderate (mean = 3.53). Trust in climate information and access to forecasts were significant predictors of adaptive behavior, whereas risk perception alone was not statistically significant.

---

## Key Findings

### 1. **The Perception-Action Gap**
- High climate risk perception (M = 4.09, SD = 0.73)
- Lower adaptation behavior (M = 3.53, SD = 0.76)
- Suggests lack of perceived coping capacity despite risk awareness

### 2. **Trust is the Strongest Predictor**
- Trust in Climate Information (TCI): β = 0.299, p < 0.001
- Remained robust across models and demographic controls
- Stronger predictor than access (ACF: β = 0.179, p = 0.003)

### 3. **Risk Perception Alone is Insufficient**
- Climate Risk Perception was not a significant predictor (p = 0.275)
- Contradicts common assumption that awareness alone drives behavior
- Implies need to address coping appraisal and self-efficacy

### 4. **Country-Level Variation is Significant**
- India, Kenya, Nigeria: Higher adaptation behavior
- Egypt, Indonesia: Lower adaptation behavior
- Suggests institutional context and governance structures matter

### 5. **Gender Differences in Access and Trust**
- Males reported higher access to forecasts than females
- Males showed greater trust in climate information
- No significant gender differences in risk perception or adaptation behavior

---

## Methodology

### Study Design
- **Type:** Cross-sectional quantitative survey
- **Sample Size:** 309 respondents
- **Sampling Method:** Convenience sampling
- **Data Collection:** Online questionnaire (Google Forms)

### Sample Characteristics
| Characteristic | N | % |
|---|---|---|
| **Age 18-24** | 223 | 72.2% |
| **Male** | 157 | 50.8% |
| **Urban** | 201 | 65.0% |
| **Bachelor's/Undergrad** | 139 | 45.0% |
| **Nigeria** | 72 | 23.3% |
| **India** | 55 | 17.8% |

### Measurement Constructs

All constructs measured on 5-point Likert scale (1 = Strongly Disagree; 5 = Strongly Agree)

| Construct | Abbreviation | Items | Cronbach's α | Mean | SD |
|---|---|---|---|---|---|
| Climate Adaptation Behaviour | CAB | 6 | 0.75 | 3.53 | 0.76 |
| Access to Climate Forecast Info | ACF | 6 | 0.81 | 3.56 | 0.85 |
| Trust in Climate Information | TCI | 6 | 0.79 | 3.53 | 0.79 |
| Climate Risk Perception | CRP | 6 | 0.71 | 4.09 | 0.73 |

### Analysis Methods
- **Descriptive Statistics:** Central tendency, dispersion, distribution
- **Bivariate Analysis:** Spearman's rank-order correlation
- **Multivariate Analysis:** Multiple linear regression (2 models)
- **Model Comparison:** Base model vs. model with demographic controls
- **Diagnostics:** Linearity, normality, homoscedasticity, influential outliers

---

## Repository Structure

```
climate-adaptation-forecasts/
├── README.md                          # This file
├── METHODOLOGY.md                     # Detailed methodology documentation
├── LICENSE                            # MIT License
├── data/
│   ├── raw/
│   │   └── survey_responses_309.csv   # Raw survey data (anonymized)
│   ├── processed/
│   │   └── cleaned_data_for_analysis.csv
│   └── codebook.md                    # Data dictionary and variable descriptions
├── analysis/
│   ├── descriptive_statistics.R       # R script for descriptive analysis
│   ├── correlation_analysis.R         # Correlation matrix and visualization
│   ├── regression_models.R            # Multiple regression analysis
│   └── visualizations.R               # Plots and figures
├── output/
│   ├── figures/
│   │   ├── figure1_diagnostic_plots.png
│   │   ├── figure2_distributions.png
│   │   ├── figure3_country_interaction.png
│   │   ├── figure4_urban_rural.png
│   │   └── figure5_correlation_matrix.png
│   └── tables/
│       ├── table1_demographics.csv
│       ├── table2_descriptives.csv
│       └── table3_regression_results.csv
├── paper/
│   ├── paper.pdf                      # Published/submitted paper
│   └── supplementary_materials.pdf    # Appendices, extended methods
└── docs/
    ├── data_access.md                 # Information on accessing raw data
    └── future_research.md             # Research recommendations
```

---

## Data

### Data Availability

- **Raw Data:** Available in `data/raw/` directory (anonymized)
- **Processed Data:** Cleaned dataset ready for analysis in `data/processed/`
- **Codebook:** See `data/codebook.md` for variable descriptions

### Privacy & Ethics

- All data has been anonymized to protect respondent confidentiality
- Ethical approval obtained from institutional review boards
- No personally identifiable information (PII) is included

### Variables

**Dependent Variable:**
- `CAB_score`: Climate Adaptation Behavior composite score

**Independent Variables:**
- `ACF_score`: Access to Climate Forecast Information
- `TCI_score`: Trust in Climate Information
- `CRP_score`: Climate Risk Perception

**Demographic Controls:**
- Age, gender, education level, occupation, country, urban/rural residence

---

## How to Use

### 1. **Reproduce the Analysis**

```bash
# Clone the repository
git clone https://github.com/yourusername/climate-adaptation-forecasts.git
cd climate-adaptation-forecasts

# Install dependencies (R)
# install.packages(c("tidyverse", "psych", "corrplot", "ggplot2"))

# Run the analysis scripts
Rscript analysis/descriptive_statistics.R
Rscript analysis/correlation_analysis.R
Rscript analysis/regression_models.R
Rscript analysis/visualizations.R
```

### 2. **Review Findings**

- Check `output/tables/` for regression results and summary statistics
- View `output/figures/` for visualizations
- Read the full paper in `paper/paper.pdf`

### 3. **Adapt for Your Research**

- Modify `analysis/regression_models.R` for different specifications
- Update country codes and construct definitions in `data/codebook.md`
- Add your own analysis scripts to the `analysis/` folder

---

## Statistical Results Summary

### Regression Model 1 (Construct Predictors Only)
```
R² = 0.237, Adj. R² = 0.230, F(3,305) = 31.67, p < 0.001

Predictor                           β      p-value
─────────────────────────────────────────────────
Access to Forecast Info (ACF)      0.179   0.003 **
Trust in Climate Info (TCI)        0.299   < 0.001 ***
Climate Risk Perception (CRP)      0.061   0.275 (ns)
```

### Regression Model 2 (+ Demographic Controls)
```
R² = 0.373, Adj. R² = 0.327, F(21,287) = 8.133, p < 0.001

Key Findings:
- Trust and access remained robust (p < 0.001)
- Country effects significant for India, Kenya, Nigeria
- Demographics (age, education, occupation) not significant
- Urban/rural differences minimal after controls
```

---

## Key Insights for Policy

1. **Trust-Building is Critical:** Invest in institutional credibility and transparent communication from climate service providers

2. **Improve Information Accessibility:** Strengthen digital infrastructure and last-mile distribution of climate forecasts

3. **Address Coping Capacity:** Move beyond awareness campaigns to build self-efficacy and adaptive capacity

4. **Context Matters:** Tailor interventions to national institutional frameworks and governance structures

5. **Gender-Sensitive Approaches:** Address disparities in access and trust, particularly for female users

---

## Citation

If you use this research, please cite:

```bibtex
@article{Ahmad2025ClimateAdaptation,
  author = {Ahmad, Fareed and Chacha, Mwita and Lotachi, Obodo and Badie, Ereny and Alvaro, Aiken},
  title = {The Role of Climate Forecasts in Shaping Adaptation Behaviour: Evidence from a Cross-Country Survey},
  journal = {Institute For Policy Research & Governance},
  year = {2025},
  doi = {10.5281/zenodo.19805131}
}
```

Or in plain text:

> Ahmad, F., Chacha, M., Lotachi, O., Badie, E., & Alvaro, A. (2025). The role of climate forecasts in shaping adaptation behaviour: Evidence from a cross-country survey. *Institute For Policy Research & Governance*, 1(4).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

This means you are free to:
- Use, copy, modify, and distribute the code and analysis
- Include a copy of the license in distributions
- Provide attribution to the original authors

---

## Contributing

We welcome contributions! Please:

1. **Report Issues:** Use GitHub Issues to report bugs or suggest improvements
2. **Submit Enhancements:** Create a Pull Request with your contributions
3. **Improve Documentation:** Help us clarify methodology or results
4. **Share Applications:** Let us know if you apply this research in your work

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

---

## Acknowledgments

- Respondents in all six countries for their time and participation
- Institutional review boards for ethical approval
- Climate service providers who facilitated data collection
- Funding agencies: [Add if applicable]

---

## Contact

**Corresponding Author:** Fareed Ahmad  
**Email:** fareed1902677@st.jmi.ac.in  
**Phone:** +91 8948559654  
**Affiliation:** M.Tech. Energy Sciences, Jamia Millia Islamia, New Delhi

For questions about the study, data access, or collaborations, please reach out!

---

## Related Publications

- Grothmann & Patt (2005): Adaptive capacity and human cognition
- Maddison (2007): Climate perception and adaptation in Africa
- Rogers (1975): Protection Motivation Theory
- Charlier (2023): Psychological vulnerability and intention-action gap

See METHODOLOGY.md for full references.

---

**Last Updated:** 2025  
**Repository Status:** Active  
**DOI:** [To be assigned upon publication]
