#' @title Fix column names
#' @description Removes non-alpha numeric column names and puts an X in front of any column starting with a number
#' @param cnames the column names
#' @export
fix_col_names <- function(cnames) {

  cnames <- gsub("[^[:alnum:]_]", "", cnames)
  cnames <- ifelse(grepl("^[0-9]", cnames), paste0("X_", cnames), cnames)

  return(cnames)

}

#' @title Convert SPSS to CSV files
#' @description Reads in a list of SPSS files and coverts the list to DTA files
#' @param fls a list of SPSS (.sav files)
#' @return writes out a list of CSV files to the same directory as the import file
#' @export
spss_to_csv <- function(fls) {

  fls <- fls[endsWith(fls, ".sav")]
  if(length(fls) == 0) {
    warning("No SPSS files found")
  }

  for (fl in fls) {

    name <- gsub(".sav", ".csv", fl)
    df <- haven::read_sav(fl)
    write.csv(df, file.path(dirname(fl), basename(name)), row.names = F)

  }

}

#' @title Convert CSV to DTA files
#' @description Reads in a list of CSV files and converts the list to DTA files
#' @param fls a list of CSV files
#' @return writes out a list of dta files to the same directory as the import file
#' @export
csv_to_dat <- function(fls) {

  fls <- fls[endsWith(fls, ".csv")]

  if(length(fls) == 0) {
    warning("No CSV files found")
  }

  for (fl in fls) {

    name <- gsub(".csv", ".dta", fl)
    df <- read.csv(fl)
    colnames(df) <- fix_col_names(colnames(df))
    have::write_dta(df, file.path(dirname(fl), basename(name)))

  }

}

#' @title Convert Excel to DTA files
#' @description Reads in a list of Excel files and converts the list to DTA files
#' @param fls a list of Excel files
#' @return writes out a list of dta files to the same directory as the import file
#' @export
excel_to_dat <- function(fls) {

  fls <- fls[endsWith(fls, ".xlsx") | endsWith(fls, ".xls")]

  if(length(fls) == 0) {
    warning("No Excel files found")
  }

  for (fl in fls) {
    print(fl)
    name <- gsub(".xlsx|.xls", ".dta", fl)
    df <- readxl::read_excel(fl)
    colnames(df) <- fix_col_names(colnames(df))
    haven::write_dta(df, file.path(dirname(fl), basename(name)))

  }

}

