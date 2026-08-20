# Getting Started Guide

Welcome to the Climate Adaptation Forecasts research project! This guide will help you get up and running quickly.

---

## 📋 Table of Contents

- [What is this project?](#what-is-this-project)
- [Quick Start (5 minutes)](#quick-start-5-minutes)
- [Install Dependencies](#install-dependencies)
- [Run the Analysis](#run-the-analysis)
- [Explore the Results](#explore-the-results)
- [Next Steps](#next-steps)
- [FAQs](#faqs)

---

## What is this project?

This repository contains a **cross-country research study** examining how climate forecasts influence adaptive behavior.

### Quick Facts
- **Study Type:** Quantitative survey research
- **Sample:** 309 respondents across 6 countries
- **Main Finding:** Trust and access to forecasts are key drivers of adaptation, not just awareness
- **Key Insight:** People know climate change is a threat (high risk perception) but don't always act on it (moderate behavior)

### The Research Question
> *How do access to climate forecasts, trust in climate information, and risk perception shape climate adaptation behavior?*

---

## Quick Start (5 minutes)

### Step 1: Clone the Repository
```bash
# Download the project
git clone https://github.com/YOUR-USERNAME/climate-adaptation-forecasts.git

# Navigate into the project
cd climate-adaptation-forecasts
```

### Step 2: Read the Overview
Open and read these files in order:
1. **README.md** - Project overview and key findings (2 min)
2. **METHODOLOGY.md** - Study details (3 min)

### Step 3: View the Results
Results are ready to view without running code:
- Open `/paper/paper.pdf` to read the full manuscript
- Check `/output/tables/` for summary statistics
- Check `/output/figures/` for visualizations

---

## Install Dependencies

### For R Users

**Option 1: Install packages one by one**
```r
# Open R console and run:
install.packages(c("tidyverse", "psych", "ggplot2", "corrplot"))
```

**Option 2: Use renv (Recommended for reproducibility)**
```bash
# In command line (with R installed):
R -e "install.packages('renv')"
R -e "renv::restore()"
```

### For Python Users

```bash
# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install pandas numpy scipy statsmodels matplotlib seaborn

# (Or from requirements file if available)
pip install -r requirements.txt
```

---

## Run the Analysis

### Full Analysis Pipeline (R)

Run all analyses in sequence:

```bash
# Navigate to project directory
cd climate-adaptation-forecasts

# Run each script in order
Rscript analysis/01_descriptive_statistics.R
Rscript analysis/02_correlation_analysis.R
Rscript analysis/03_regression_models.R
```

### Individual Scripts

Run just one analysis:

```bash
# Descriptive statistics only
Rscript analysis/01_descriptive_statistics.R

# This will output:
# - Summary tables to /output/tables/
# - Visualizations to /output/figures/
```

### Expected Runtime
- Descriptive statistics: ~1-2 minutes
- Correlation analysis: ~1-2 minutes
- Regression models: ~2-3 minutes
- **Total:** ~5-10 minutes

---

## Explore the Results

### Where to Find Results

#### Tables
Location: `/output/tables/`

- `descriptive_statistics.csv` - Means, SDs, ranges
- `cronbach_alpha.csv` - Internal reliability
- `correlation_matrix.csv` - Construct intercorrelations
- `regression_results.csv` - Main regression output
- `scores_by_country.csv` - Means by country

#### Figures
Location: `/output/figures/`

- `figure1_diagnostic_plots.png` - Regression diagnostics
- `figure2_distributions.png` - Score distributions
- `figure3_country_interaction.png` - Country × residence patterns
- `figure4_urban_rural.png` - Urban vs rural comparison
- `figure5_correlation_matrix.png` - Heatmap of correlations

### Key Findings Summary

| Metric | Value |
|--------|-------|
| Sample size | 309 |
| Countries | 6 (India, Kenya, Egypt, Indonesia, Nigeria, Japan) |
| **Highest risk perception** | CRP: M = 4.09 |
| **Lowest adaptation behavior** | CAB: M = 3.53 |
| **Strongest predictor of adaptation** | Trust (β = 0.299, p < 0.001) |
| **2nd strongest predictor** | Access (β = 0.179, p = 0.003) |
| **Risk perception alone** | Not significant (p = 0.275) |

---

## Next Steps

### For Reading Only
1. ✅ Read README.md
2. ✅ Read METHODOLOGY.md
3. ✅ Review paper.pdf
4. ✅ Explore output tables and figures

### For Understanding the Code
1. ✅ Read docs/PROJECT_STRUCTURE.md
2. ✅ Read data/codebook.md
3. ✅ Review analysis/01_descriptive_statistics.R
4. ✅ Check output tables created by scripts

### For Contributing
1. ✅ Read CONTRIBUTING.md
2. ✅ Review PROJECT_STRUCTURE.md
3. ✅ Fork the repository
4. ✅ Create a branch and make changes
5. ✅ Submit a pull request

### For Extending the Research
1. Review "Future Research" section in METHODOLOGY.md
2. Check docs/FUTURE_RESEARCH.md for detailed suggestions
3. Consider:
   - Applying study to new countries
   - Conducting longitudinal follow-up
   - Testing interventions
   - Qualitative research on trust formation

---

## File Navigation Guide

### For Reading the Paper
```
/
└── paper/
    ├── paper.pdf                 ← START HERE
    └── supplementary_materials.pdf
```

### For Understanding the Data
```
/
├── data/
│   └── codebook.md              ← Variable definitions
└── output/
    └── tables/table2_descriptive_statistics.csv
```

### For Understanding the Methods
```
/
├── METHODOLOGY.md               ← Detailed methods
├── docs/
│   ├── PROJECT_STRUCTURE.md
│   └── FAQ.md
```

### For Running the Analysis
```
/
├── analysis/
│   ├── 01_descriptive_statistics.R
│   ├── 02_correlation_analysis.R
│   └── 03_regression_models.R
└── output/
    ├── tables/                  ← Results go here
    └── figures/                 ← Plots go here
```

---

## FAQs

### Q: Do I need to run the analyses or can I just read the paper?
**A:** You can absolutely just read the paper! The results are already computed. Running the code is optional if you want to:
- Verify reproducibility
- Understand the analysis pipeline
- Adapt the code for your own research

### Q: Can I use this data for my own research?
**A:** Yes! The dataset is provided under the MIT License. Please:
- Cite the original research
- Acknowledge data use in your publications
- Review the MIT License and data use agreement in LICENSE file

### Q: How do I cite this research?
**A:** Use the citation in README.md:
```
Ahmad, F., Chacha, M., Lotachi, O., Badie, E., & Alvaro, A. (2025). 
The role of climate forecasts in shaping adaptation behaviour: Evidence 
from a cross-country survey. [Journal Name], XX(X), XX-XX.
```

### Q: What does "adaptation behavior" mean?
**A:** It refers to actions people take to reduce climate vulnerability, such as:
- Modifying daily routines
- Investing in adaptive measures
- Participating in community initiatives
- Changing livelihood practices

See data/codebook.md for exact survey items.

### Q: Why is there a perception-action gap?
**A:** The study found that people perceive high climate risk but take moderate action. This might be because:
- They don't believe they can cope effectively (low self-efficacy)
- They lack trust in institutions providing information
- They don't have access to reliable forecasts
- Other barriers exist (economic, social, institutional)

### Q: What are the main policy implications?
**A:** Building institutional trust and improving information accessibility are more important than awareness campaigns alone:
1. Invest in transparent, trustworthy climate services
2. Improve digital infrastructure for information access
3. Strengthen community-based adaptation programs
4. Support institutional credibility

### Q: How do I contribute to this project?
**A:** Read CONTRIBUTING.md for detailed guidelines. Quick version:
- Report issues
- Suggest improvements
- Improve documentation
- Extend the research
- Submit pull requests

### Q: What if I have a question about the data?
**A:** Check these in order:
1. README.md - Overview
2. data/codebook.md - Variable definitions
3. METHODOLOGY.md - Study design details
4. docs/FAQ.md - Detailed FAQ
5. Email: fareed1902677@st.jmi.ac.in

### Q: Can I use this code for other research?
**A:** Yes! The code is provided under MIT License. You can:
- Adapt it for other studies
- Use the analysis templates
- Modify the visualizations
- Build upon the work

Just include a license and attribution.

### Q: How often is this repository updated?
**A:** 
- Original publication: [Specify date]
- Code/data corrections: As needed
- Extensions/new analyses: Ongoing
- Major updates: Tracked in version history

Check the commit history for recent changes.

### Q: What if I find an error?
**A:** Please:
1. Check if it's documented in TROUBLESHOOTING.md
2. Review existing GitHub issues
3. Create a new issue with:
   - Clear description of error
   - Steps to reproduce
   - Expected vs actual behavior
   - System information

---

## Troubleshooting

### Issue: "Package not found" error
```
Error: library "tidyverse" not found
```
**Solution:**
```r
install.packages("tidyverse")
library(tidyverse)
```

### Issue: "File not found" when running script
```
Error: data/raw/survey_responses.csv not found
```
**Solution:**
- Check working directory: `getwd()`
- Verify file paths are correct
- Use relative paths from project root

### Issue: Output directory doesn't exist
```
Error: cannot open file 'output/tables/results.csv'
```
**Solution:**
```bash
# Create directories
mkdir -p output/tables
mkdir -p output/figures
```

### Issue: Plots don't display
```
# In RStudio
```
**Solution:**
- Check that ggplot2 is loaded: `library(ggplot2)`
- Verify plots are being saved correctly
- Use `ggsave()` explicitly

### More Issues?
See docs/TROUBLESHOOTING.md for detailed solutions.

---

## System Requirements

### Minimum
- 2GB RAM
- 500MB disk space
- R 4.0+ or Python 3.7+

### Recommended
- 4GB+ RAM
- 2GB disk space
- Latest R or Python version
- Git for version control

### Supported Platforms
- Windows 10+
- macOS 10.13+
- Linux (Ubuntu 18.04+, etc.)

---

## What to Do Next

### 🔰 Beginner Path
1. Read README.md (5 min)
2. Look at output figures (5 min)
3. Skim METHODOLOGY.md (10 min)
4. Read the paper (30 min)

### 📊 Analysis Path
1. Complete Beginner Path
2. Install R/Python and dependencies (10 min)
3. Read PROJECT_STRUCTURE.md (10 min)
4. Run analysis scripts (10 min)
5. Review output tables (10 min)

### 👨‍💻 Developer Path
1. Complete Analysis Path
2. Read CONTRIBUTING.md (10 min)
3. Fork the repository
4. Create a feature branch
5. Make modifications and test
6. Submit pull request

### 🔬 Research Path
1. Complete Analysis Path
2. Read docs/FUTURE_RESEARCH.md (15 min)
3. Identify research question
4. Adapt code for your context
5. Conduct new analysis
6. Share results with community

---

## Key Resources

| Resource | Purpose | Time |
|----------|---------|------|
| README.md | Project overview | 5 min |
| paper.pdf | Full manuscript | 30 min |
| METHODOLOGY.md | Study design | 10 min |
| PROJECT_STRUCTURE.md | Code organization | 10 min |
| data/codebook.md | Variable guide | 10 min |
| CONTRIBUTING.md | Contribution guidelines | 5 min |
| docs/FAQ.md | Common questions | 5 min |

---

## Getting Help

### Self-Help Resources
- [x] README.md
- [x] METHODOLOGY.md
- [x] docs/FAQ.md
- [x] docs/TROUBLESHOOTING.md
- [x] docs/PROJECT_STRUCTURE.md

### Community Support
- GitHub Issues: Report bugs or ask questions
- GitHub Discussions: Share ideas and get feedback

### Direct Contact
- **Email:** fareed1902677@st.jmi.ac.in
- **Affiliation:** Jamia Millia Islamia, New Delhi

---

## Staying Updated

### Subscribe to Updates
```bash
# Watch the repository for updates
# (Click "Watch" button on GitHub)

# Or check commit history
git log --oneline
```

### Report Problems
```bash
# If something doesn't work
# Create an issue on GitHub with:
# - Clear description
# - Steps to reproduce
# - Error message
```

---

## You're All Set! 🎉

You now have everything you need to:
- ✅ Understand the research
- ✅ Explore the data and results
- ✅ Run the analyses
- ✅ Extend the research
- ✅ Contribute improvements

### What's Next?

Choose your own adventure:

1. **Just Reading?** → Open paper.pdf
2. **Running Code?** → Follow "Run the Analysis" section
3. **Contributing?** → Read CONTRIBUTING.md
4. **Extending?** → Check docs/FUTURE_RESEARCH.md
5. **Questions?** → Check docs/FAQ.md

---

## Happy exploring! 🌍🌱

For questions or feedback, please contact:
- **Email:** fareed1902677@st.jmi.ac.in
- **GitHub Issues:** [Repository URL]/issues

---

**Last Updated:** 2025  
**Document Version:** 1.0
