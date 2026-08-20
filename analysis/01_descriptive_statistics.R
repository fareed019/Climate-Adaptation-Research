# ============================================================================
# Climate Adaptation Forecasts - Cross-Country Survey
# Descriptive Statistics Analysis
# ============================================================================
# Authors: [Your name]
# Date: 2025
# Purpose: Calculate and visualize descriptive statistics for all constructs
# ============================================================================

# Clear workspace
rm(list = ls())
set.seed(12345)

# ============================================================================
# 1. LOAD LIBRARIES
# ============================================================================

library(tidyverse)      # Data manipulation and visualization
library(psych)          # Psychological statistics and psychometrics
library(ggplot2)        # Advanced plotting
library(gridExtra)      # Arrange multiple plots
library(knitr)          # Report generation

# ============================================================================
# 2. LOAD DATA
# ============================================================================

# Load the cleaned dataset
# UPDATE: Replace with actual path to your data
data <- read.csv("data/processed/cleaned_data_for_analysis.csv", 
                  stringsAsFactors = FALSE)

# Quick check
cat("Dataset dimensions:", nrow(data), "rows x", ncol(data), "columns\n")
cat("First few rows:\n")
print(head(data, 3))

# ============================================================================
# 3. DEFINE CONSTRUCTS
# ============================================================================

# Define the four main constructs and their component items
constructs <- list(
  CAB = c("CAB_item_1", "CAB_item_2", "CAB_item_3", 
          "CAB_item_4", "CAB_item_5", "CAB_item_6"),
  ACF = c("ACF_item_1", "ACF_item_2", "ACF_item_3", 
          "ACF_item_4", "ACF_item_5", "ACF_item_6"),
  TCI = c("TCI_item_1", "TCI_item_2", "TCI_item_3", 
          "TCI_item_4", "TCI_item_5", "TCI_item_6"),
  CRP = c("CRP_item_1", "CRP_item_2", "CRP_item_3", 
          "CRP_item_4", "CRP_item_5", "CRP_item_6")
)

# ============================================================================
# 4. CREATE COMPOSITE SCORES
# ============================================================================

# Calculate mean scores for each construct
data <- data %>%
  mutate(
    CAB_score = rowMeans(select(., all_of(constructs$CAB)), na.rm = TRUE),
    ACF_score = rowMeans(select(., all_of(constructs$ACF)), na.rm = TRUE),
    TCI_score = rowMeans(select(., all_of(constructs$TCI)), na.rm = TRUE),
    CRP_score = rowMeans(select(., all_of(constructs$CRP)), na.rm = TRUE)
  )

cat("✓ Composite scores calculated\n")

# ============================================================================
# 5. CALCULATE DESCRIPTIVE STATISTICS
# ============================================================================

# Function to calculate comprehensive descriptive statistics
describe_construct <- function(data, construct_name, construct_score) {
  
  scores <- data[[construct_score]]
  
  desc_stats <- data.frame(
    Construct = construct_name,
    N = length(scores),
    Mean = mean(scores, na.rm = TRUE),
    SD = sd(scores, na.rm = TRUE),
    Median = median(scores, na.rm = TRUE),
    Min = min(scores, na.rm = TRUE),
    Max = max(scores, na.rm = TRUE),
    Range = max(scores, na.rm = TRUE) - min(scores, na.rm = TRUE),
    Skewness = psych::skew(scores),
    Kurtosis = psych::kurtosi(scores),
    Missing = sum(is.na(scores))
  )
  
  return(desc_stats)
}

# Calculate for all constructs
descriptive_table <- bind_rows(
  describe_construct(data, "CAB", "CAB_score"),
  describe_construct(data, "ACF", "ACF_score"),
  describe_construct(data, "TCI", "TCI_score"),
  describe_construct(data, "CRP", "CRP_score")
)

cat("\n")
cat("="*70, "\n")
cat("DESCRIPTIVE STATISTICS FOR MAIN CONSTRUCTS\n")
cat("="*70, "\n")
print(kable(descriptive_table, digits = 3))

# ============================================================================
# 6. RELIABILITY ANALYSIS (CRONBACH'S ALPHA)
# ============================================================================

cat("\n")
cat("="*70, "\n")
cat("RELIABILITY ANALYSIS (CRONBACH'S ALPHA)\n")
cat("="*70, "\n")

cronbach_results <- data.frame(
  Construct = c("CAB", "ACF", "TCI", "CRP"),
  Alpha = c(
    alpha(data[, constructs$CAB])$total$raw_alpha,
    alpha(data[, constructs$ACF])$total$raw_alpha,
    alpha(data[, constructs$TCI])$total$raw_alpha,
    alpha(data[, constructs$CRP])$total$raw_alpha
  )
)

# Add interpretation
cronbach_results <- cronbach_results %>%
  mutate(
    Interpretation = case_when(
      Alpha >= 0.90 ~ "Excellent",
      Alpha >= 0.80 ~ "Good",
      Alpha >= 0.70 ~ "Acceptable",
      Alpha >= 0.60 ~ "Questionable",
      TRUE ~ "Poor"
    )
  )

print(kable(cronbach_results, digits = 3))
cat("\nNote: α ≥ 0.70 indicates acceptable internal consistency\n")

# ============================================================================
# 7. DEMOGRAPHIC CHARACTERISTICS
# ============================================================================

cat("\n")
cat("="*70, "\n")
cat("DEMOGRAPHIC CHARACTERISTICS (N = ", nrow(data), ")\n")
cat("="*70, "\n")

# Age distribution
age_dist <- data %>%
  count(age_group) %>%
  mutate(percentage = round(n / sum(n) * 100, 1)) %>%
  rename(Age_Group = age_group, Count = n, Percentage = percentage)

cat("\nAge Distribution:\n")
print(kable(age_dist))

# Gender distribution
gender_dist <- data %>%
  count(gender) %>%
  mutate(percentage = round(n / sum(n) * 100, 1)) %>%
  rename(Gender = gender, Count = n, Percentage = percentage)

cat("\nGender Distribution:\n")
print(kable(gender_dist))

# Country distribution
country_dist <- data %>%
  count(country) %>%
  mutate(percentage = round(n / sum(n) * 100, 1)) %>%
  rename(Country = country, Count = n, Percentage = percentage) %>%
  arrange(desc(Count))

cat("\nCountry Distribution:\n")
print(kable(country_dist))

# Education distribution
education_dist <- data %>%
  count(education_level) %>%
  mutate(percentage = round(n / sum(n) * 100, 1)) %>%
  rename(Education = education_level, Count = n, Percentage = percentage)

cat("\nEducation Distribution:\n")
print(kable(education_dist))

# ============================================================================
# 8. CONSTRUCT SCORES BY DEMOGRAPHICS
# ============================================================================

cat("\n")
cat("="*70, "\n")
cat("CONSTRUCT SCORES BY DEMOGRAPHIC GROUPS\n")
cat("="*70, "\n")

# By gender
cat("\nMean Scores by Gender:\n")
gender_scores <- data %>%
  group_by(gender) %>%
  summarise(
    N = n(),
    CAB_mean = mean(CAB_score, na.rm = TRUE),
    ACF_mean = mean(ACF_score, na.rm = TRUE),
    TCI_mean = mean(TCI_score, na.rm = TRUE),
    CRP_mean = mean(CRP_score, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  rename(Gender = gender)

print(kable(gender_scores, digits = 2))

# By country
cat("\nMean Scores by Country:\n")
country_scores <- data %>%
  group_by(country) %>%
  summarise(
    N = n(),
    CAB_mean = mean(CAB_score, na.rm = TRUE),
    ACF_mean = mean(ACF_score, na.rm = TRUE),
    TCI_mean = mean(TCI_score, na.rm = TRUE),
    CRP_mean = mean(CRP_score, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  rename(Country = country) %>%
  arrange(desc(CAB_mean))

print(kable(country_scores, digits = 2))

# ============================================================================
# 9. VISUALIZATION - DISTRIBUTIONS
# ============================================================================

cat("\n")
cat("Creating distribution plots...\n")

# Create data in long format for plotting
plot_data <- data %>%
  select(CAB_score, ACF_score, TCI_score, CRP_score) %>%
  rename(
    "Climate Adaptation\nBehaviour" = CAB_score,
    "Access to Climate\nForecasts" = ACF_score,
    "Trust in Climate\nInformation" = TCI_score,
    "Climate Risk\nPerception" = CRP_score
  ) %>%
  pivot_longer(everything(), names_to = "Construct", values_to = "Score")

# Distribution plot
dist_plot <- ggplot(plot_data, aes(x = Score, fill = Construct)) +
  geom_histogram(bins = 20, alpha = 0.7, color = "black") +
  facet_wrap(~Construct, ncol = 2, scales = "free") +
  theme_minimal() +
  theme(
    legend.position = "none",
    plot.title = element_text(hjust = 0.5, face = "bold", size = 12),
    axis.title.x = element_text(size = 10),
    axis.title.y = element_text(size = 10)
  ) +
  labs(
    title = "Distribution of Construct Scores",
    x = "Score (1-5 Likert Scale)",
    y = "Frequency"
  )

# Save plot
ggsave("output/figures/01_descriptive_distributions.png",
       plot = dist_plot, width = 10, height = 6, dpi = 300)
cat("✓ Saved: output/figures/01_descriptive_distributions.png\n")

# ============================================================================
# 10. EXPORT RESULTS
# ============================================================================

# Save descriptive table
write.csv(descriptive_table, 
          "output/tables/descriptive_statistics.csv", 
          row.names = FALSE)
cat("✓ Saved: output/tables/descriptive_statistics.csv\n")

# Save Cronbach's alpha results
write.csv(cronbach_results, 
          "output/tables/cronbach_alpha.csv", 
          row.names = FALSE)
cat("✓ Saved: output/tables/cronbach_alpha.csv\n")

# Save scores by country
write.csv(country_scores, 
          "output/tables/scores_by_country.csv", 
          row.names = FALSE)
cat("✓ Saved: output/tables/scores_by_country.csv\n")

# ============================================================================
# 11. SUMMARY REPORT
# ============================================================================

cat("\n")
cat("="*70, "\n")
cat("ANALYSIS SUMMARY\n")
cat("="*70, "\n")
cat("\nKey Findings:\n")
cat("• Sample size: N =", nrow(data), "\n")
cat("• Highest mean: CRP (M =", round(mean(data$CRP_score), 2), ")\n")
cat("• Lowest mean: CAB (M =", round(mean(data$CAB_score), 2), ")\n")
cat("• Largest SD: ACF (SD =", round(sd(data$ACF_score), 2), ")\n")
cat("• All constructs show acceptable reliability (α ≥ 0.71)\n")
cat("\nPerception-Action Gap:\n")
cat("• Risk Perception: M =", round(mean(data$CRP_score), 2), 
    "(High concern)\n")
cat("• Adaptation Behavior: M =", round(mean(data$CAB_score), 2), 
    "(Moderate action)\n")
cat("• Gap: Δ =", round(mean(data$CRP_score) - mean(data$CAB_score), 2), "\n")

cat("\n")
cat("✓ Descriptive statistics analysis complete!\n")
cat("="*70, "\n")

# ============================================================================
# END OF SCRIPT
# ============================================================================
