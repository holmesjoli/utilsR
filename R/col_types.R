#' @title Test numeric
#' @description Test if the vector is numeric
#' @param vec the vector to test
#' @return boolean TRUE/FALSE
#' @examples
#' vec <- c(1,2,3)
#' test_vec_num(vec)
#' ## Returns TRUE
#' @export
test_vec_num <- function(vec) {

    if (class(vec) %in% c("numeric", "integer", "float")) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

#' @title Test string/factor
#' @description Test if the vector is a string/factor
#' @param vec the vector to test
#' @return boolean TRUE/FALSE
#' @examples
#' vec <- c('a', 'b', 'c')
#' test_vec_num(vec)
#' ## Returns TRUE
#' @export
test_vec_str <- function(vec) {

    if (class(vec) %in% c("character", "factor")) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

#' @title Test boolean
#' @description Test if the vector is a boolean
#' @param vec the vector to test
#' @return boolean TRUE/FALSE
#' @examples
#' vec <- c('a', 'b', 'c')
#' test_vec_num(vec)
#' ## Returns TRUE
#' @export
test_vec_bool <- function(vec) {

    if (class(vec) == "logical") {
        return(TRUE)
    } else {
        return(FALSE)
    }
}
