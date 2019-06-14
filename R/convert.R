#' @title Convert SPSS
#' @description Reads in an SPSS file and exports as a CSV file
#' @param fls a list of SPSS (.sav files)
#' @return writes out a list of CSV files to the same directory as the import file
convert_spss <- function(fls) {

  for (fl in fls) {

    name <- gsub(".sav", ".csv", fl)
    df <- haven::read_sav(fl)
    write.csv(df, file.path(dirname(fl), name), row.names = F)

  }

}
