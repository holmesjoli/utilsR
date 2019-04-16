
vec1 <- c(1:3)
vec2 <- c("a", "b", "c")
vec3 <- c(TRUE, FALSE, TRUE)

df <- data.frame(vec1, vec2, vec3)

test_that("vector is numeric", {
    
    expect_true(test_vec_num(vec1))
    expect_false(test_vec_num(vec2))
    expect_false(test_vec_num(vec3))
    
    expect_true(test_vec_num(df$vec1))
    expect_false(test_vec_num(df$vec2))
    expect_false(test_vec_num(df$vec3))
    
})

test_that("vector is an str", {
    
    expect_false(test_vec_str(vec1))
    expect_true(test_vec_str(vec2))
    expect_false(test_vec_str(vec3))
    
    expect_false(test_vec_str(df$vec1))
    expect_true(test_vec_str(df$vec2))
    expect_false(test_vec_str(df$vec3))
    
})

test_that("vector is an bool", {
    
    expect_false(test_vec_bool(vec1))
    expect_false(test_vec_bool(vec2))
    expect_true(test_vec_bool(vec3))
    
    expect_false(test_vec_bool(df$vec1))
    expect_false(test_vec_bool(df$vec2))
    expect_true(test_vec_bool(df$vec3))
    
})
