hash <- paste0(paste(rep("#", 80), collapse = ""), "\n")

#' @title Open log
#' @description Opens a log file
#' @param fl the filename of the log
#' @examples
#' fl <- 'test_log.log'
#' open_log(fl)
open_log <- function(fl) {

    op <- options(digits.secs = 0)
    start_tm <- Sys.time()

    sink(fl)
    cat(paste0("Log file initiated on ", start_tm, "\n"))
    cat(hash)
}

#' @title Close log
#' @description Closes the open log file
#' @examples
#' close_log()
close_log <- function() {

    end_tm <- Sys.time()
    duration <- end_tm - start_tm

    cat(hash)
    cat(paste0("Log file closed on ", end_tm, "\n"))
    cat(paste0("Took ", round(duration, 1), " seconds to run."))

    sink()
}
