# Set seed for reproducibility
set.seed(304)

# Load required packages
library(dplyr)
library(lubridate)

# Define the time period (start and end date)
start_date <- ymd("2011-01-01")
end_date <- ymd("2024-08-01")

# Create a sequence of monthly dates from start to end
time_periods <- seq.Date(start_date, end_date, by = "month")

# Define the civic centers
civic_centres <- c("ET", "NY", "SC", "TO")

# Simulate data
simulated_data <- expand.grid(
  CIVIC_CENTRE = civic_centres,
  TIME_PERIOD = time_periods
) %>%
  mutate(MARRIAGE_LICENSES = rpois(n = n(), lambda = 10))

# Display the simulated data
print(simulated_data)
