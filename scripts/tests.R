# Load required libraries
library(testthat)
library(dplyr)

# Test 1: Check number of rows in the dataset
test_that("Dataset has correct number of rows", {
  civic_centres <- c("ET", "NY", "SC", "TO")
  start_date <- as.Date("2011-01-01")
  end_date <- as.Date("2024-08-01")
  
  # Calculate expected number of months
  expected_months <- length(seq.Date(start_date, end_date, by = "month"))
  
  # Load the simulated data
  # Assuming the data is stored in 'simulated_data'
  expected_rows <- length(civic_centres) * expected_months
  
  # Check that the number of rows in the dataset matches
  expect_equal(nrow(simulated_data), expected_rows)
})

# Test 2: Check that marriage licenses are non-negative
test_that("Marriage licenses are non-negative", {
  # All values in MARRIAGE_LICENSES should be >= 0
  expect_true(all(simulated_data$MARRIAGE_LICENSES >= 0))
})

