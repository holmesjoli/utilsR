hash <- paste0(paste(rep("#", 80), collapse = ""), "\n")

open_log <- function(fl) {
    #' Opens a log file
    #' @param fl the filename of the log
    #' @examples
    #'
    #' fl <- 'test_log.log'
    #' open_log(fl)
    
    op <- options(digits.secs = 0)
    start_tm <- Sys.time()
    
    sink(fl)
    cat(paste0("Log file initiated on ", start_tm, "\n"))
    cat(hash)
}

close_log <- function() {
    #' Closes a log file
    
    end_tm <- Sys.time()
    duration <- end_tm - start_tm
    
    cat(hash)
    cat(paste0("Log file closed on ", end_tm, "\n"))
    cat(paste0("Took ", round(duration, 1), " seconds to run."))
    
    sink()
}
