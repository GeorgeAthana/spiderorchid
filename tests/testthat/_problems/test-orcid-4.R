# Extracted from test-orcid.R:4

# setup ------------------------------------------------------------------------
library(testthat)
test_env <- simulate_test_env(package = "spiderorchid", path = "..")
attach(test_env, warn.conflicts = FALSE)

# test -------------------------------------------------------------------------
orcid_ids <- c("0000-0002-2140-5352", "0000-0001-6515-827X")
result <- fetch_orcid(orcid_ids)
