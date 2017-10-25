context("Functions to make nicer numbers")

test_that("makePct is working with different inputs", {
  res1 <- makePct(0.25)
  res2 <- makePct(-1.251, percSymbol = FALSE)
  res3 <- makePct(0.999, digits = 2)
  res4 <- makePct(0.26, digits = 2, keepTrailing0 = FALSE)
  res5 <- makePct(0.4, percSymbol = FALSE, keepTrailing0 = FALSE)
  res6 <- makePct(0.004, digits = 0, roundToZero = FALSE)
  res7 <- makePct(0.004, percSymbol = FALSE, digits = 0, roundToZero = TRUE)
  res8 <- makePct(0.00004, digits = 2, roundToZero = FALSE)

  expect_type(res1, "character")
  expect_type(res2, "character")
  expect_type(res3, "character")
  expect_type(res4, "character")
  expect_type(res5, "character")
  expect_type(res6, "character")
  expect_type(res7, "character")
  expect_type(res8, "character")

  expect_equal(res1, "25%")
  expect_equal(res2, "-125")
  expect_equal(res3, "99.90%")
  expect_equal(res4, "26%")
  expect_equal(res5, "40")
  expect_equal(res6, "<0.5%")
  expect_equal(res7, "0")
  expect_equal(res8, "<0.005%")
})


test_that("formatBigNumbers", {
  res1 <- formatBigNumbers(1234567.123, digits = 2)
  res2 <- formatBigNumbers(1234567, bigMark = " ")

  expect_type(res1, "character")
  expect_type(res2, "character")

  expect_equal(res1, "1\\,234\\,567.12")
  expect_equal(res2, "1 234 567")
})
