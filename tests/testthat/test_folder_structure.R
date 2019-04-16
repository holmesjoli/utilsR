
fls <- c('test.txt', 'test_log.txt')
dirs <- c('Current', 'Archive')

test_that("create_files creates the expected files", {

  create_files(fls)
  expect_true(all(sapply(fls, file.exists)))

})

test_that("create_dirs creates the expected directories", {

  create_dirs(dirs)
  expect_true(all(sapply(dirs, dir.exists)))

})

test_that("remove_files removes the expected files", {

  remove_files(fls)
  expect_false(all(sapply(fls, file.exists)))

})


test_that("remove_dirs removes the expected directories", {

  remove_dirs(dirs)
  expect_false(all(sapply(dirs, dir.exists)))

})
