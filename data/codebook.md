# Data Codebook

## Dataset Overview

**Dataset Name:** Climate Adaptation Forecasts - Cross-Country Survey  
**Number of Records:** 309  
**Number of Variables:** 32  
**Data Collection Period:** [Specify dates]  
**Collection Method:** Online questionnaire (Google Forms)  
**Anonymization Status:** Fully anonymized (no PII)

---

## Variable Dictionary

### DEMOGRAPHIC VARIABLES

#### 1. `respondent_id`
- **Type:** Numeric (integer)
- **Range:** 1-309
- **Description:** Unique identifier for each respondent
- **Missing Values:** 0
- **Notes:** Used for data tracking and matching; no personally identifiable information included

#### 2. `country`
- **Type:** Categorical (text)
- **Values:**
  - "India" (n=55, 17.8%)
  - "Kenya" (n=54, 17.5%)
  - "Egypt" (n=47, 15.2%)
  - "Indonesia" (n=51, 16.5%)
  - "Nigeria" (n=72, 23.3%)
  - "Japan" (n=30, 9.7%)
- **Missing Values:** 0
- **Notes:** Reference category for regression = "Egypt"

#### 3. `age_group`
- **Type:** Categorical (ordinal)
- **Coding:**
  - 1 = "Below 18" (n=5, 1.6%)
  - 2 = "18-24" (n=223, 72.2%)
  - 3 = "25-34" (n=50, 16.2%)
  - 4 = "35-44" (n=19, 6.1%)
  - 5 = "45-54" (n=6, 1.9%)
  - 6 = "55+" (n=6, 1.9%)
- **Missing Values:** 0
- **Notes:** Median age group = 18-24

#### 4. `gender`
- **Type:** Categorical (nominal)
- **Coding:**
  - 1 = "Male" (n=157, 50.8%)
  - 2 = "Female" (n=152, 49.2%)
  - 3 = "Other/Prefer not to say" (n=0)
- **Missing Values:** 0
- **Notes:** Nearly equal distribution; reference category for regression = Female

#### 5. `education_level`
- **Type:** Categorical (ordinal)
- **Coding:**
  - 1 = "Below High School" (n=0)
  - 2 = "High School or Equivalent" (n=121, 39.2%)
  - 3 = "Bachelor's/Undergraduate" (n=139, 45.0%)
  - 4 = "Master's Degree" (n=25, 8.1%)
  - 5 = "PhD or Higher" (n=7, 2.3%)
  - 6 = "Vocational/Other" (n=17, 5.5%)
- **Missing Values:** 0
- **Notes:** Majority have bachelor's degree or equivalent

#### 6. `occupation`
- **Type:** Categorical (nominal)
- **Coding:** [List all occupation categories and frequencies]
  - 1 = "Student"
  - 2 = "Agricultural Worker"
  - 3 = "Professional/Technical"
  - 4 = "Business Owner"
  - 5 = "Government Employee"
  - 6 = "Unemployed"
  - 7 = "Other"
- **Missing Values:** [Specify number]
- **Notes:** [Any relevant occupational patterns]

#### 7. `residence`
- **Type:** Categorical (nominal)
- **Coding:**
  - 1 = "Urban" (n=201, 65.0%)
  - 2 = "Rural" (n=108, 35.0%)
- **Missing Values:** 0
- **Notes:** Urban-biased sample; reference category for regression = Rural

#### 8. `years_at_residence`
- **Type:** Numeric (integer)
- **Range:** [Minimum to maximum years]
- **Mean:** [Specify if collected]
- **Missing Values:** [Specify]
- **Notes:** If collected, indicates residential stability

---

### CONSTRUCT SCALES - INDIVIDUAL ITEMS

#### Climate Adaptation Behaviour (CAB) Items

**CAB_Item_1:** "I have modified my daily routines in response to climate change"
- Scale: 1-5 (1=Strongly Disagree, 5=Strongly Agree)
- Mean: [Specify]
- SD: [Specify]

**CAB_Item_2:** "I have invested in measures to adapt to climate variability"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CAB_Item_3:** "I actively engage in community-based climate adaptation initiatives"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CAB_Item_4:** "I have changed my livelihood practices due to climate concerns"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CAB_Item_5:** "I take precautions against climate-related hazards"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CAB_Item_6:** "I participate in climate adaptation planning in my community"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

#### Access to Climate Forecast Information (ACF) Items

**ACF_Item_1:** "I have access to reliable climate forecast information"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**ACF_Item_2:** "I receive climate forecasts through multiple channels"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**ACF_Item_3:** "Climate forecast information is easily available to me"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**ACF_Item_4:** "I can access climate information whenever I need it"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**ACF_Item_5:** "Digital infrastructure in my area allows me to access forecasts"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**ACF_Item_6:** "Timely climate forecasts are disseminated in my region"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

#### Trust in Climate Information (TCI) Items

**TCI_Item_1:** "I trust the accuracy of climate forecasts"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**TCI_Item_2:** "Climate service providers are reliable sources of information"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**TCI_Item_3:** "I have confidence in climate-related recommendations from authorities"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**TCI_Item_4:** "Climate information from official sources is credible"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**TCI_Item_5:** "I trust my government/local agencies to provide accurate climate information"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**TCI_Item_6:** "Climate forecasts have proven accurate in my past experience"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

#### Climate Risk Perception (CRP) Items

**CRP_Item_1:** "Climate change poses a serious threat to my livelihood"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CRP_Item_2:** "I am vulnerable to climate-related hazards"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CRP_Item_3:** "Extreme weather events are increasingly affecting my region"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CRP_Item_4:** "Climate change will negatively impact my future prospects"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CRP_Item_5:** "My region is susceptible to climate-related disasters"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

**CRP_Item_6:** "Climate variability poses immediate risks to my current activities"
- Scale: 1-5
- Mean: [Specify]
- SD: [Specify]

---

### COMPOSITE SCALE SCORES

#### 9. `CAB_score`
- **Type:** Numeric (continuous)
- **Calculation:** Mean of CAB_Item_1 through CAB_Item_6
- **Range:** 1.0 - 5.0
- **Mean:** 3.53
- **SD:** 0.76
- **Median:** 3.50
- **Cronbach's α:** 0.75 (Good internal consistency)
- **Skewness:** -0.43 (Slightly left-skewed)
- **Kurtosis:** 0.63 (Slightly heavy-tailed)
- **Missing Values:** 0
- **Interpretation:** Higher scores = greater climate adaptation behavior

#### 10. `ACF_score`
- **Type:** Numeric (continuous)
- **Calculation:** Mean of ACF_Item_1 through ACF_Item_6
- **Range:** 1.0 - 5.0
- **Mean:** 3.56
- **SD:** 0.85
- **Median:** 3.67
- **Cronbach's α:** 0.81 (Good internal consistency)
- **Skewness:** -0.56
- **Kurtosis:** 0.45
- **Missing Values:** 0
- **Interpretation:** Higher scores = better access to climate forecasts

#### 11. `TCI_score`
- **Type:** Numeric (continuous)
- **Calculation:** Mean of TCI_Item_1 through TCI_Item_6
- **Range:** 1.0 - 5.0
- **Mean:** 3.53
- **SD:** 0.79
- **Median:** 3.50
- **Cronbach's α:** 0.79 (Good internal consistency)
- **Skewness:** -0.25
- **Kurtosis:** 0.11
- **Missing Values:** 0
- **Interpretation:** Higher scores = greater trust in climate information

#### 12. `CRP_score`
- **Type:** Numeric (continuous)
- **Calculation:** Mean of CRP_Item_1 through CRP_Item_6
- **Range:** 1.0 - 5.0
- **Mean:** 4.09
- **SD:** 0.73
- **Median:** 4.17
- **Cronbach's α:** 0.71 (Acceptable internal consistency)
- **Skewness:** -0.95 (Negatively skewed)
- **Kurtosis:** 1.03
- **Missing Values:** 0
- **Interpretation:** Higher scores = greater perceived climate risk

---

### DERIVED VARIABLES (for analysis)

#### 13. `gender_numeric`
- **Type:** Numeric (dummy)
- **Coding:** 1 = Male, 0 = Female
- **Usage:** Multiple regression analysis

#### 14. `residence_numeric`
- **Type:** Numeric (dummy)
- **Coding:** 1 = Urban, 0 = Rural
- **Usage:** Multiple regression analysis

#### 15-21. Country Dummies (for regression)
- **Type:** Numeric (dummy, reference = Egypt)
- **Variables:**
  - `country_india`: 1 if India, 0 otherwise
  - `country_kenya`: 1 if Kenya, 0 otherwise
  - `country_nigeria`: 1 if Nigeria, 0 otherwise
  - `country_indonesia`: 1 if Indonesia, 0 otherwise
  - `country_japan`: 1 if Japan, 0 otherwise
- **Usage:** Multiple regression Model 2

#### 22. `standardized_CAB`
- **Type:** Numeric (continuous)
- **Calculation:** (CAB_score - mean) / SD
- **Mean:** 0
- **SD:** 1
- **Usage:** Optional standardization for comparison

#### 23. `standardized_ACF`
- **Type:** Numeric (continuous)
- **Calculation:** (ACF_score - mean) / SD
- **Mean:** 0
- **SD:** 1

#### 24. `standardized_TCI`
- **Type:** Numeric (continuous)
- **Calculation:** (TCI_score - mean) / SD
- **Mean:** 0
- **SD:** 1

#### 25. `standardized_CRP`
- **Type:** Numeric (continuous)
- **Calculation:** (CRP_score - mean) / SD
- **Mean:** 0
- **SD:** 1

---

### CORRELATION MATRIX

**Construct Correlations (Spearman's rho):**

|       | CAB   | ACF   | TCI   | CRP   |
|-------|-------|-------|-------|-------|
| CAB   | 1.00  | 0.42  | 0.46  | 0.22  |
| ACF   | 0.42  | 1.00  | 0.65  | 0.27  |
| TCI   | 0.46  | 0.65  | 1.00  | 0.34  |
| CRP   | 0.22  | 0.27  | 0.34  | 1.00  |

**Interpretation:**
- Strongest relationship: ACF ↔ TCI (r = 0.65)
- Moderate relationships: CAB ↔ ACF/TCI (r = 0.42-0.46)
- Weakest relationship: CAB ↔ CRP (r = 0.22)

---

## Data Quality Indicators

### Response Rates
- **Completion Rate:** [Specify % of questionnaires fully completed]
- **Consent Rate:** [Specify % who consented to participate]
- **Drop-out Rate:** [Specify % who started but didn't complete]

### Missing Data
- **CAB_score:** 0 missing (0%)
- **ACF_score:** 0 missing (0%)
- **TCI_score:** 0 missing (0%)
- **CRP_score:** 0 missing (0%)
- **Demographic Variables:** [Specify if any missing]

### Data Entry Quality
- **Double-entry Verification:** [Yes/No/Partial]
- **Range Checks:** All Likert items verified to be 1-5
- **Consistency Checks:** [Specify any automated checks]
- **Outlier Detection:** Cook's Distance analysis performed

### Distribution Characteristics
- **Normality:** All constructs show negative skewness (ceiling effects)
- **Outliers:** [Specify number and handling]
- **Data Transformation:** [Specify if any transformations applied]

---

## Special Notes

### Country-Specific Considerations

**India:** High urbanization rate (65%); predominantly young professionals

**Kenya:** Pastoral and agricultural livelihoods; climate-sensitive communities

**Egypt:** Arid climate; acute water scarcity concerns; high CRP scores

**Indonesia:** Tropical climate; mixed urban-rural sample; flooding/drought concerns

**Nigeria:** Sahel region; agricultural vulnerability; diverse livelihood strategies

**Japan:** Developed economy; advanced climate services; lower sample size (n=30)

### Known Limitations

1. **Selection Bias:** Convenience sample over-represents educated, digitally-connected individuals
2. **Social Desirability:** Self-reported behaviors may be inflated
3. **Language:** Original survey language [specify]; translations used in some countries
4. **Urban Bias:** 65% urban respondents; rural perspectives under-represented
5. **Age Bias:** 72% aged 18-24; findings may not generalize to older populations

---

## Data Access and Usage

### File Formats Available
- CSV format (comma-separated values)
- Excel format (XLSX)
- SPSS format (SAV)
- R format (RData)

### Citation
If you use this data, please cite as:
> Ahmad, F., Chacha, M., Lotachi, O., Badie, E., & Alvaro, A. (2025). Climate Adaptation Forecasts - Cross-Country Survey Dataset [Dataset]. [Repository URL]. [DOI if assigned]

### Data Use Agreement
- Data is for research purposes only
- Data must be kept confidential
- No redistribution without permission
- Results must acknowledge the original research team

---

## Codebook Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2025 | Initial codebook created |
| | | |

---

**Codebook Created:** 2025  
**Last Updated:** 2025  
**Corresponding Author:** Fareed Ahmad  
**Email:** fareed1902677@st.jmi.ac.in
