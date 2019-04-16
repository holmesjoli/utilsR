# Folder Structure functions

create_files <- function(fls) {
    #' Creates files
    #' @param fls the files to create
    #' @examples
    #' fls <- c('test.txt', 'test_log.txt')
    #' create_files(fls)
    
    for (fl in fls) {
        if (!file.exists(fl)) {
            file.create(fl)
        }
    }
    
}

create_dirs <- function(dirs) {
    #' Creates directories
    #' @param dirs the directories to create
    #' @examples
    #' dirs <- c('Current', 'Archive')
    #' create_dirs(dirs)
    
    for (dir in dirs) {
        if (!dir.exists(dir)) {
            dir.create(dir)
        }
    }
    
}

remove_files <- function(fls) {
    #' Creates files
    #' @param fls the files to create
    #' @examples
    #' fls <- c('test.txt', 'test_log.txt')
    #' remove_files(fls)
    
    for (fl in fls) {
        if (file.exists(fl)) {
            file.remove(fl)
        }
    }
    
}

remove_dirs <- function(dirs) {
    #' Removes directories
    #' @param dirs the files to create
    #' @examples
    #' dirs <- c('Current', 'Archive')
    #' remove_dirs(dirs)
    
    for (dir in dirs) {
        if (dir.exists(dir)) {
            unlink(dir, recursive = TRUE)
        }
    }
}
