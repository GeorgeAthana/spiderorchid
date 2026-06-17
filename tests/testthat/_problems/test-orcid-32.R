# Extracted from test-orcid.R:32

# setup ------------------------------------------------------------------------
library(testthat)
test_env <- simulate_test_env(package = "spiderorchid", path = "..")
attach(test_env, warn.conflicts = FALSE)

# test -------------------------------------------------------------------------
orcid_ids <- c("0009-0008-4231-8291")
result <- fetch_orcid(orcid_ids)
