#' @title Read excel all
#' @description Reads in all excel sheets from an excel file
#' @param pth the path to read the excel sheet from
#' @export
read_excel_all <- function(pth, ...) {

  sheets <- readxl::excel_sheets(pth)
  xl <- lapply(sheets, function(x) {readxl::read_excel(pth, sheet = x)})
  names(xl) <- sheets

  return(xl)

}
