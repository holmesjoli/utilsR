log_class <- list(
  hash = paste0(paste(rep("#", 80), collapse = ""), "\n"),
  start_tm = Sys.time()
)

class(log_class) <- append(class(log_class), "log_attr")

#' @title Open log
#' @description Opens a log file
#' @param fl the filename of the log
#' @examples
#' fl <- 'test_log.log'
#' open_log(fl)
open_log <- function(fl) {

    op <- options(digits.secs = 0)
    start_tm <- log_class$start_tm

    sink(fl)
    cat(paste0("Log file initiated on ", start_tm, "\n"))
    cat(log_class$hash)
}

#' @title Close log
#' @description Closes the open log file
#' @examples
#' close_log()
close_log <- function() {

    end_tm <- Sys.time()
    duration <- end_tm - log_class$start_tm

    cat(log_class$hash)
    cat(paste0("Log file closed on ", end_tm, "\n"))
    cat(paste0("Took ", round(duration, 1), " seconds to run."))

    sink()
}
