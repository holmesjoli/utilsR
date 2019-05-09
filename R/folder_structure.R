# Folder Structure functions

#' @title Create files
#' @descrpition Creates empty files in vector
#' @param fls a vector of files to create
#' @examples
#' \dontrun{
#' fls <- c('test.txt', 'test_log.txt')
#' create_files(fls)
#' }
create_files <- function(fls) {

    for (fl in fls) {
        if (!file.exists(fl)) {
            file.create(fl)
        }
    }
}

#' @title Create directories
#' @description Creates empty directories in vector
#' @param dirs a vector of directories to create
#' @examples
#' \dontrun{
#' dirs <- c('Current', 'Archive')
#' create_dirs(dirs)
#' }
create_dirs <- function(dirs) {

    for (dir in dirs) {
        if (!dir.exists(dir)) {
            dir.create(dir)
        }
    }
}

#' @title Remove files
#' @description Removes files in vector
#' @param fls a vector of files to remove
#' @examples
#' \dontrun{
#' fls <- c('test.txt', 'test_log.txt')
#' remove_files(fls)
#' }
remove_files <- function(fls) {

    for (fl in fls) {
        if (file.exists(fl)) {
            file.remove(fl)
        }
    }

}

#' @title Remove directories
#' @description Removes directories in vector
#' @param dirs a vector of directories to remove
#' @examples
#' \dontrun{
#' dirs <- c('Current', 'Archive')
#' remove_dirs(dirs)
#' }
remove_dirs <- function(dirs) {

    for (dir in dirs) {
        if (dir.exists(dir)) {
            unlink(dir, recursive = TRUE)
        }
    }
}
