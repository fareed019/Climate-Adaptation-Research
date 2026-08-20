# Project Structure and Organization Guide

## Overview

This document provides a comprehensive guide to the repository structure, helping you navigate the project and understand how different components fit together.

---

## Directory Tree

```
climate-adaptation-forecasts/
│
├── README.md                          # Main project overview and quick start
├── LICENSE                            # MIT License
├── METHODOLOGY.md                     # Detailed methodology documentation
├── CONTRIBUTING.md                    # Guidelines for contributors
├── .gitignore                         # Git configuration
│
├── data/
│   ├── README.md                      # Data overview
│   ├── raw/
│   │   └── [RAW DATA FILES - NOT TRACKED]
│   │       ├── survey_responses.csv   # Original survey data
│   │       └── [other raw data]
│   │
│   ├── processed/
│   │   ├── cleaned_data_for_analysis.csv
│   │   ├── data_dictionary.csv
│   │   └── [cleaned/processed files]
│   │
│   └── codebook.md                    # Data dictionary and variable guide
│
├── analysis/                          # Analysis scripts
│   ├── 01_descriptive_statistics.R    # Descriptive analysis script
│   ├── 02_correlation_analysis.R      # Correlation and bivariate analysis
│   ├── 03_regression_models.R         # Main regression analyses
│   ├── 04_sensitivity_analysis.R      # Robustness checks (optional)
│   ├── 05_visualization.R             # Advanced visualizations
│   └── README.md                      # Guide to running analyses
│
├── output/
│   ├── tables/
│   │   ├── table1_demographics.csv
│   │   ├── table2_descriptive_stats.csv
│   │   ├── table3_regression_results.csv
│   │   ├── table4_correlation_matrix.csv
│   │   └── [other summary tables]
│   │
│   ├── figures/
│   │   ├── figure1_diagnostic_plots.png
│   │   ├── figure2_distributions.png
│   │   ├── figure3_country_interaction.png
│   │   ├── figure4_urban_rural_comparison.png
│   │   ├── figure5_correlation_matrix.png
│   │   └── [other visualizations]
│   │
│   └── reports/
│       ├── analysis_summary.md
│       └── [detailed reports]
│
├── paper/
│   ├── paper.pdf                      # Published/submitted manuscript
│   ├── supplementary_materials.pdf    # Appendices and extended methods
│   ├── cover_letter.txt               # Submission cover letter
│   └── reviewer_responses.md          # Responses to reviewer comments
│
├── docs/
│   ├── PROJECT_STRUCTURE.md           # This file
│   ├── GETTING_STARTED.md             # Quick start guide
│   ├── DATA_ACCESS.md                 # Information on data access
│   ├── FUTURE_RESEARCH.md             # Recommended extensions
│   ├── FAQ.md                         # Frequently asked questions
│   ├── GLOSSARY.md                    # Terms and definitions
│   └── TROUBLESHOOTING.md             # Common issues and solutions
│
└── .github/                           # GitHub configuration
    ├── workflows/
    │   └── ci.yml                     # Continuous integration (optional)
    └── ISSUE_TEMPLATE/
        └── bug_report.md              # Issue template (optional)

```

---

## Key Directories Explained

### `/data`
**Purpose:** Contains all data related to the project

**Subdirectories:**
- `raw/` - Original, unmodified data from surveys
- `processed/` - Cleaned data ready for analysis
- `codebook.md` - Data dictionary describing all variables

**Key Files:**
- `cleaned_data_for_analysis.csv` - Main dataset used in analyses
- `data_dictionary.csv` - Variable definitions and coding schemes

**Guidelines:**
- ⚠️ Raw data not tracked in git (see .gitignore)
- All data is anonymized; no personal identifiers
- Variables use consistent naming convention (construct_item_#)
- Likert scale standardized: 1=Strongly Disagree, 5=Strongly Agree

### `/analysis`
**Purpose:** Contains all statistical analysis scripts

**Script Execution Order:**
1. `01_descriptive_statistics.R` - Initial data exploration
2. `02_correlation_analysis.R` - Bivariate relationships
3. `03_regression_models.R` - Main inferential analyses
4. `04_sensitivity_analysis.R` - Robustness checks (optional)
5. `05_visualization.R` - Figure generation

**Script Standards:**
- Self-contained and reproducible
- Include comments explaining each section
- Load required libraries at the top
- Set seed for reproducibility
- Output results to `/output` directory
- Include error handling where appropriate

**Running Scripts:**
```bash
# Individual script
Rscript analysis/01_descriptive_statistics.R

# All scripts
for file in analysis/*.R; do Rscript "$file"; done

# Python equivalent
python analysis/02_correlation_analysis.py
```

### `/output`
**Purpose:** Contains all analysis results and figures

**Organization:**
- `tables/` - CSV/Excel files with summary statistics
- `figures/` - PNG/PDF figures and plots
- `reports/` - Markdown summaries and detailed findings

**File Naming:**
- Tables: `table#_descriptive_name.csv`
- Figures: `figure#_descriptive_name.png`
- Example: `table3_regression_results.csv`, `figure2_distributions.png`

### `/paper`
**Purpose:** Contains manuscript and related publication materials

**Contents:**
- `paper.pdf` - Submitted or published manuscript
- `supplementary_materials.pdf` - Appendices, extended tables
- `cover_letter.txt` - Submission cover letter
- `reviewer_responses.md` - Responses to reviewer feedback

### `/docs`
**Purpose:** Supporting documentation and guides

**Key Files:**
- `GETTING_STARTED.md` - Quick start for new users
- `DATA_ACCESS.md` - How to access and use data
- `FUTURE_RESEARCH.md` - Recommended research extensions
- `FAQ.md` - Answers to common questions
- `GLOSSARY.md` - Terms and definitions
- `TROUBLESHOOTING.md` - Solutions to common problems

---

## File Naming Conventions

### Data Files
```
[type]_[description]_[version].csv
Examples:
  - cleaned_data_for_analysis_v1.csv
  - survey_responses_raw.csv
  - demographics_summary.csv
```

### Analysis Scripts
```
[number]_[description].R
Examples:
  - 01_descriptive_statistics.R
  - 02_correlation_analysis.R
  - 03_regression_models.R
```

### Output Files

**Tables:**
```
table[number]_[description].csv
Examples:
  - table1_demographics.csv
  - table2_descriptive_statistics.csv
  - table3_regression_results.csv
```

**Figures:**
```
figure[number]_[description].png
Examples:
  - figure1_diagnostic_plots.png
  - figure2_distributions.png
  - figure5_correlation_matrix.png
```

---

## Data Flow Diagram

```
Raw Survey Data (Google Forms)
         │
         ↓
    Data Entry / Export
         │
         ↓
    /data/raw/survey_responses.csv
         │
         ↓
    Data Cleaning & Processing
    (scripts or manual)
         │
         ↓
    /data/processed/cleaned_data_for_analysis.csv
         │
         ├─→ 01_descriptive_statistics.R
         │        └→ /output/tables/table2_*
         │
         ├─→ 02_correlation_analysis.R
         │        └→ /output/tables/table4_*
         │        └→ /output/figures/figure5_*
         │
         ├─→ 03_regression_models.R
         │        └→ /output/tables/table3_*
         │        └→ /output/figures/figure1_*
         │
         └─→ 05_visualization.R
                  └→ /output/figures/*
```

---

## Getting Started with the Repository

### For New Users

1. **Read the main README.md**
   - Understand the research question and key findings
   - Review the statistical results summary

2. **Review METHODOLOGY.md**
   - Understand study design and sample
   - Learn about measurement constructs
   - Check analytical methods

3. **Explore the codebook**
   - Familiarize yourself with variable names and definitions
   - Understand data coding schemes

4. **Run the analysis scripts**
   - Start with descriptive statistics
   - Progress through regression models
   - Review output tables and figures

### For Collaborators

1. **Fork the repository** (if contributing)
   - See CONTRIBUTING.md for guidelines

2. **Clone locally**
   ```bash
   git clone https://github.com/YOUR-USERNAME/climate-adaptation-forecasts.git
   cd climate-adaptation-forecasts
   ```

3. **Install dependencies**
   - R: `install.packages(c("tidyverse", "psych", "ggplot2", ...))`
   - Python: `pip install -r requirements.txt` (if applicable)

4. **Run the analysis pipeline**
   - Execute scripts in order: 01 → 02 → 03 → etc.
   - Review output in `/output` directory

---

## Variable Organization

### Demographic Variables
- `respondent_id` - Unique identifier
- `country` - 6-level categorical
- `age_group` - 6-level ordinal
- `gender` - 3-level categorical
- `education_level` - 6-level ordinal
- `occupation` - Multi-category
- `residence` - Urban/Rural binary

### Main Construct Variables

**Individual Items (24 total):**
- `CAB_item_1` through `CAB_item_6`
- `ACF_item_1` through `ACF_item_6`
- `TCI_item_1` through `TCI_item_6`
- `CRP_item_1` through `CRP_item_6`

**Composite Scores (4 total):**
- `CAB_score` - Mean of 6 CAB items
- `ACF_score` - Mean of 6 ACF items
- `TCI_score` - Mean of 6 TCI items
- `CRP_score` - Mean of 6 CRP items

**Standardized Scores (4 total, optional):**
- `std_CAB` - Standardized CAB score
- `std_ACF` - Standardized ACF score
- `std_TCI` - Standardized TCI score
- `std_CRP` - Standardized CRP score

**Dummy Variables (for regression):**
- `gender_male` - 1 if male, 0 otherwise
- `residence_urban` - 1 if urban, 0 otherwise
- `country_india`, `country_kenya`, etc. (6 total, reference=Egypt)

---

## Analysis Pipeline Stages

### Stage 1: Data Preparation
- Input: Raw survey data
- Tasks: Cleaning, coding, validation
- Output: `cleaned_data_for_analysis.csv`

### Stage 2: Descriptive Analysis
- Input: Cleaned data
- Script: `01_descriptive_statistics.R`
- Output: Means, SDs, distributions, demographics
- Files: `table2_descriptive_statistics.csv`, `figure2_distributions.png`

### Stage 3: Reliability & Validity
- Input: Cleaned data
- Script: `01_descriptive_statistics.R` (Cronbach's alpha section)
- Output: Internal consistency measures
- Files: `cronbach_alpha.csv`

### Stage 4: Correlation Analysis
- Input: Composite scores
- Script: `02_correlation_analysis.R`
- Output: Correlation matrix, bivariate plots
- Files: `table4_correlation_matrix.csv`, `figure5_correlation_matrix.png`

### Stage 5: Regression Analysis
- Input: Composite scores + demographics
- Script: `03_regression_models.R`
- Output: Model results, coefficients, diagnostics
- Files: `table3_regression_results.csv`, `figure1_diagnostic_plots.png`

### Stage 6: Sensitivity Analysis (optional)
- Input: Regression models
- Script: `04_sensitivity_analysis.R`
- Output: Robustness checks, alternative specifications
- Files: Various robustness tables/figures

### Stage 7: Visualization
- Input: All analysis results
- Script: `05_visualization.R`
- Output: Publication-ready figures
- Files: Multiple figure files

---

## Dependencies and Requirements

### R Packages
```r
# Core analysis
tidyverse      # Data manipulation (dplyr, ggplot2, etc.)
psych          # Psychometric functions
corrplot       # Correlation visualization

# Statistical analysis
lm.beta        # Standardized regression coefficients
car            # Diagnostic utilities
sandwich       # Robust standard errors
lmtest         # Model specification tests

# Visualization
ggplot2        # Grammar of graphics
gridExtra      # Arrange multiple plots
cowplot        # Publication-ready plots

# Reporting
knitr          # Dynamic document generation
rmarkdown      # Markdown rendering
stargazer      # Table formatting
```

### Python Packages (if using Python)
```
pandas         # Data manipulation
numpy          # Numerical computing
scipy          # Statistical functions
statsmodels    # Statistical modeling
matplotlib     # Basic plotting
seaborn        # Statistical visualization
scikit-learn   # Machine learning (optional)
```

---

## Environment Setup

### R Setup
```bash
# Create a project-specific library
mkdir renv
R -e "install.packages('renv')"

# Initialize renv to track package versions
R -e "renv::init()"

# Restore packages
R -e "renv::restore()"
```

### Python Setup
```bash
# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

---

## Tips for Navigation and Organization

### Quick Access
- Use symbolic links for frequently accessed directories
- Add custom aliases to your shell profile for common commands
- Create a personal notes file for tracking progress

### Working with Git
```bash
# Check status
git status

# Add changes
git add [files]

# Commit with clear message
git commit -m "[Type] Description of changes"

# Push to remote
git push origin branch-name
```

### Reproducibility Checklist
- [ ] Set seed value (for random processes)
- [ ] Use relative file paths (not absolute)
- [ ] Document software versions
- [ ] Include session info in analysis output
- [ ] Test scripts on clean system
- [ ] Verify all dependencies are documented

---

## Troubleshooting Common Issues

### Script won't run
- Check working directory: `getwd()` (R) or `os.getcwd()` (Python)
- Verify data file path exists
- Check for missing packages: `library(missing_pkg)`

### Data not loading
- Verify file path is correct
- Check file encoding (may need `encoding = "UTF-8"`)
- Ensure CSV delimiter matches (comma, semicolon, etc.)

### Figures not generating
- Check `/output/figures/` directory exists
- Verify ggplot2 is installed and loaded
- Ensure plot dimensions are reasonable

### Regression results don't match paper
- Check that demographics are coded correctly
- Verify reference categories are as expected
- Ensure no data filtering has been applied

---

## Best Practices

### Code Organization
- One analysis per script
- Clear section headers with `# ===`
- Comment non-obvious code
- Use descriptive variable names

### File Management
- Use version control (Git)
- Keep data files read-only when possible
- Regular backups of analysis scripts
- Archive old versions in dated folders

### Documentation
- Keep README updated
- Document assumptions and decisions
- Note any deviations from preregistered analysis
- Record any data modifications with justification

---

## Resources and Support

### Internal Documentation
- See `/docs` directory for additional guides
- METHODOLOGY.md for detailed study design
- CONTRIBUTING.md for contribution guidelines

### External Resources
- R for Data Science: https://r4ds.had.co.nz/
- ggplot2 documentation: https://ggplot2.tidyverse.org/
- Statistics for the behavioral sciences

### Getting Help
- Check existing GitHub Issues
- Review CONTRIBUTING.md for contact information
- Consult TROUBLESHOOTING.md for common problems

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2025 | Initial project structure |
| | | |

---

**Last Updated:** 2025  
**Maintainer:** Fareed Ahmad  
**Contact:** fareed1902677@st.jmi.ac.in
