# Extracted from test-scholar.R:21

# setup ------------------------------------------------------------------------
library(testthat)
test_env <- simulate_test_env(package = "spiderorchid", path = "..")
attach(test_env, warn.conflicts = FALSE)

# test -------------------------------------------------------------------------
result <- fetch_scholar("TEST")
expect_s3_class(result, "tbl_df")
expect_equal(nrow(result), 0)
