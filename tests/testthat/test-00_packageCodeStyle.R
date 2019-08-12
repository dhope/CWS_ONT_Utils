context("Package code style")

test_that("Code is lint-free", {
  expect_lint_free(linters = selectLinters())
})


test_that("Example script is lint-free", {
  exampleScript <- system.file("exampleScript.R", package = "INWTUtils")
  expect_length(checkStyle(exampleScript, type = "script"), 0)
})
