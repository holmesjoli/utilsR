
test_vec_num <- function(vec) {
    #' Test if the vector is numeric
    #' @param vec the vector to test
    #' @return boolean TRUE/FALSE
    #' @examples
    #' vec <- c(1,2,3)
    #' test_col_num(vec)
    #'
    #' ## Returns TRUE
    #'
    #' vec <- c('a', 'b', 'c')
    #' test_col_num(vec)
    #' ## Returns FALSE

    if (class(vec) %in% c("numeric", "integer", "float")) {
        return(TRUE)
    } else {
        return(FALSE)
    }

}

test_vec_str <- function(vec) {
    #' Test if the vector is a string
    #' @param vec the vector to test
    #' @return boolean TRUE/FALSE
    #' @examples
    #' vec <- c('a', 'b', 'c')
    #' test_col_num(vec)
    #' ## Returns TRUE

    if (class(vec) %in% c("character", "factor")) {
        return(TRUE)
    } else {
        return(FALSE)
    }

}


test_vec_bool <- function(vec) {
    #' Test if the vector is a boolean
    #' @param vec the vector to test
    #' @return boolean TRUE/FALSE
    #' @examples
    #' vec <- c('a', 'b', 'c')
    #' test_col_num(vec)
    #' ## Returns TRUE

    if (class(vec) == "logical") {
        return(TRUE)
    } else {
        return(FALSE)
    }

}
