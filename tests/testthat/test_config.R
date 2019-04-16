cu_yaml <- read_yaml("./test.yaml")

cu_json <- read_json("./test.json")

test_that("read_yaml reads in a yaml file", {

  expect_true(all(c("test1", "test2") %in% names(cu_yaml)))
  expect_true(all(c("test_var1", "test_var2") %in% names(cu_yaml$test1)))

})

test_that("read_json reads in a json file", {

  expect_true(all(c("test1", "test2") %in% names(cu_json)))
  expect_true(all(c("test_var1", "test_var2") %in% names(cu_json$test1)))

})
