# Extracted from test-orcid.R:39

# setup ------------------------------------------------------------------------
library(testthat)
test_env <- simulate_test_env(package = "spiderorchid", path = "..")
attach(test_env, warn.conflicts = FALSE)

# test -------------------------------------------------------------------------
orcid_ids <- c("0000-0000-0000-0000")
expect_error(fetch_orcid(orcid_ids), "Invalid ORCID ID")
