context("for non numeric")

test_that("if character or mixed inputs", {

  x <- c('a','b','c')
  y <- c(1,2,'aa','b',5)

  expect_error( m3plot(x) )
  expect_error( m3plot(y) )
})
