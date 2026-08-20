# Contributing to Climate Adaptation Forecasts Research

First off, thank you for your interest in contributing to this research project! We welcome contributions that help improve the quality, accessibility, and applicability of this climate adaptation research.

---

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Ways to Contribute](#ways-to-contribute)
- [Getting Started](#getting-started)
- [Reporting Issues](#reporting-issues)
- [Submitting Changes](#submitting-changes)
- [Style Guides](#style-guides)
- [Recognition](#recognition)

---

## Code of Conduct

### Our Commitment

We are committed to providing a welcoming and inclusive environment for all contributors, regardless of:
- Age, body size, disability, ethnicity, gender identity and expression
- Level of experience, education, socio-economic status
- Nationality, personal appearance, race, religion, or sexual identity and orientation

### Expected Behavior

Contributors are expected to:
- Use welcoming and inclusive language
- Be respectful of differing opinions and experiences
- Accept constructive criticism gracefully
- Focus on what is best for the community
- Show empathy towards other community members

### Unacceptable Behavior

Unacceptable behaviors include:
- Harassment or discrimination of any kind
- Insulting/derogatory comments
- Unwelcome sexual attention or advances
- Publishing others' private information
- Any other conduct which could reasonably be considered inappropriate

---

## Ways to Contribute

### 1. **Report Bugs**
- Found an error in the analysis or code? Let us know!
- Create an issue with details and reproducibility steps

### 2. **Suggest Enhancements**
- Have an idea to improve the research or documentation?
- Propose new analysis methods, visualization approaches, or theoretical extensions

### 3. **Improve Documentation**
- Fix typos or unclear explanations
- Enhance existing documentation
- Add examples or use cases

### 4. **Write Code**
- Develop analysis scripts in R, Python, or other languages
- Create data processing or visualization tools
- Add new statistical analyses or robustness checks

### 5. **Conduct Extensions**
- Replicate the study in new contexts or countries
- Test alternative theoretical frameworks
- Develop interventions based on findings

### 6. **Provide Feedback**
- Review the research and provide constructive comments
- Suggest methodological improvements
- Highlight areas for future research

### 7. **Share Applications**
- Document how you've applied this research
- Contribute case studies or practical examples
- Share lessons learned from implementation

---

## Getting Started

### Prerequisites

- **Git:** Version control system
- **GitHub Account:** For submitting pull requests
- **R (optional):** For running statistical analyses
- **Python (optional):** For alternative analyses

### Fork and Clone

```bash
# 1. Fork the repository on GitHub
# (Click "Fork" button in top-right corner)

# 2. Clone your fork locally
git clone https://github.com/YOUR-USERNAME/climate-adaptation-forecasts.git

# 3. Add upstream remote
cd climate-adaptation-forecasts
git remote add upstream https://github.com/ORIGINAL-OWNER/climate-adaptation-forecasts.git

# 4. Create a new branch for your changes
git checkout -b descriptive-branch-name
```

### Branch Naming Convention

Use clear, descriptive branch names:
- `feature/add-sensitivity-analysis`
- `fix/regression-syntax-error`
- `docs/improve-methodology-explanation`
- `analysis/extend-to-new-countries`

---

## Reporting Issues

### Before Submitting an Issue

- Check existing issues to avoid duplicates
- Review the documentation and README
- Try to reproduce the issue locally

### Issue Template

When submitting an issue, include:

```markdown
## Summary
Brief description of the issue

## Expected Behavior
What should happen?

## Actual Behavior
What actually happens?

## Steps to Reproduce
1. Step 1
2. Step 2
3. Step 3

## Environment
- OS: [e.g., Windows 10, macOS, Ubuntu]
- R version: [if applicable]
- Python version: [if applicable]

## Error Message
[Copy full error message, including stack trace]

## Additional Context
Any other relevant information
```

---

## Submitting Changes

### Before You Submit

1. **Update your branch:** Sync with the latest upstream changes
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **Run tests:** Ensure all analyses run without errors
   ```bash
   # Test R scripts
   Rscript analysis/your_script.R
   ```

3. **Check code style:** Follow the style guides (see below)

4. **Update documentation:** If your changes affect documentation, update it

### Pull Request Process

1. **Commit with clear messages:**
   ```bash
   git commit -m "Add sensitivity analysis for CRP construct"
   # Provide detailed description in commit body
   ```

2. **Push to your fork:**
   ```bash
   git push origin descriptive-branch-name
   ```

3. **Create a Pull Request (PR)** on GitHub with:
   - Clear title describing the changes
   - Reference to any related issues (#123)
   - Description of what changed and why
   - Any testing you performed

4. **PR Template:**
   ```markdown
   ## Description
   Brief explanation of changes
   
   ## Type of Change
   - [ ] Bug fix
   - [ ] New feature
   - [ ] Enhancement
   - [ ] Documentation update
   
   ## Related Issues
   Closes #[issue number]
   
   ## How Has This Been Tested?
   Description of testing performed
   
   ## Checklist
   - [ ] My code follows the style guides
   - [ ] I have updated documentation
   - [ ] I have commented complex code sections
   - [ ] My changes generate no new warnings
   ```

5. **Respond to reviews:** Address feedback and make requested changes

6. **Merge:** Once approved, your PR will be merged

---

## Style Guides

### R Code Style

Follow the [tidyverse style guide](https://style.tidyverse.org/):

```r
# Good: Clear variable names, proper spacing
calculate_adaptation_score <- function(data, threshold = 3.5) {
  data %>%
    mutate(
      adaptation_binary = if_else(CAB_score >= threshold, 1, 0),
      risk_category = case_when(
        CRP_score >= 4.0 ~ "High",
        CRP_score >= 3.0 ~ "Medium",
        TRUE ~ "Low"
      )
    )
}

# Bad: Non-descriptive names, unclear logic
calc_score <- function(d, t = 3.5) {
  d$ab <- ifelse(d$c >= t, 1, 0)
  return(d)
}
```

### Python Code Style

Follow [PEP 8](https://www.python.org/dev/peps/pep-0008/):

```python
# Good
def calculate_adaptation_score(data, threshold=3.5):
    """Calculate binary adaptation classification."""
    data['adaptation_binary'] = (data['CAB_score'] >= threshold).astype(int)
    return data

# Bad
def calc_score(d,t=3.5):
    d['ab']=[1 if x>=t else 0 for x in d['c']]
    return d
```

### Documentation Style

- Use clear, inclusive language
- Explain the "why" not just the "what"
- Include examples where helpful
- Link to relevant sections
- Use markdown formatting consistently

### Commit Message Style

```
[Type] Brief descriptive title (50 chars max)

More detailed explanation of the change, including:
- What was changed
- Why it was changed
- How to test the change

References: #123
```

**Type conventions:**
- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation
- `refactor:` Code reorganization
- `test:` Test additions
- `perf:` Performance improvement

---

## Testing

### Running Analysis Scripts

Before submitting, verify your code runs without errors:

```bash
# Test R script
Rscript analysis/your_new_analysis.R

# Check for warnings
R CMD check your_package --as-cran

# Run Python tests
python -m pytest tests/
```

### Reproducibility

Ensure your contributions are reproducible:
- Include seed values for random processes
- Document all dependencies and versions
- Provide clear instructions for reproduction
- Test on a clean environment if possible

---

## Documentation

### Updating README.md

If your changes affect how to use the project:
1. Update relevant sections in README.md
2. Update METHODOLOGY.md if methodology changes
3. Update data/codebook.md if new variables added

### Adding Comments

Comment complex code sections:

```r
# Calculate standardized regression coefficients
# to allow comparison across variables with different scales
std_data <- scale(analysis_data[, predictor_vars])
```

### Creating New Documentation

For significant contributions, consider creating new documentation:
- `docs/tutorial_*.md` for how-to guides
- `docs/technical_*.md` for implementation details
- `docs/case_study_*.md` for applied examples

---

## Review Process

### What Reviewers Look For

- **Correctness:** Does the code/analysis work correctly?
- **Clarity:** Is it understandable and well-documented?
- **Alignment:** Does it fit the project's goals?
- **Quality:** Does it follow the style guides?
- **Impact:** Will it benefit the community?

### Responding to Reviews

- Be respectful and appreciative of feedback
- Ask clarifying questions if needed
- Provide responses to all comments
- Make requested changes promptly
- Re-request review once changes are made

---

## Recognition

We believe in giving credit where it's due!

### Contributor Recognition

Contributors will be recognized through:
- Acknowledgment in commit history
- Mention in project documentation
- Addition to CONTRIBUTORS.md file (for significant contributions)
- Authorship consideration on derivative publications

### Citation

If your contribution is substantial and leads to a publication, discuss potential co-authorship with the original research team.

---

## Getting Help

### Questions?

- **General Questions:** Open a GitHub Discussion
- **Technical Issues:** Create an Issue with details
- **Methodological Questions:** Contact the research team

### Useful Resources

- [GitHub Help](https://help.github.com)
- [How to write a Git commit message](https://chris.beams.io/posts/git-commit/)
- [Markdown Guide](https://www.markdownguide.org/)
- [R Style Guide](https://style.tidyverse.org/)
- [Python Style Guide](https://pep8.org/)

---

## Special Interest Areas

We're particularly interested in contributions that:

1. **Expand Geographic Coverage**
   - Apply study to new countries/regions
   - Document context-specific findings

2. **Methodological Extensions**
   - Longitudinal follow-up studies
   - Mixed-methods approaches
   - Qualitative deep-dives

3. **Policy Applications**
   - Case studies of interventions
   - Policy briefs and practical guides
   - Cost-effectiveness analyses

4. **Theoretical Development**
   - Alternative theoretical frameworks
   - Mediating/moderating mechanisms
   - Integration with other theories

5. **Open Science**
   - Data sharing and transparency
   - Reproducibility enhancements
   - Tool development for accessibility

---

## License

By contributing to this project, you agree that your contributions will be licensed under its MIT License.

---

## Questions?

For questions about contributing, please:
- Email: fareed1902677@st.jmi.ac.in
- Open a GitHub Discussion
- Check existing issues and PRs

---

**Thank you for making climate adaptation research better!** 🌍🌱

Last updated: 2025
