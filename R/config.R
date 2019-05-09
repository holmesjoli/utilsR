#' @title Import yaml
#' @description Reads a yaml file
#' @param pth the path to the yaml file
#' @return a nested list
#' @examples
#' \dontrun{
#' pth <- "./tests/testthat/test.yaml"
#' config <- read_yaml(pth)
#' }
read_yaml <- function(pth) {

    config <- yaml::yaml.load_file(file.path(pth))

    return(config)
}

#' @title Import json
#' @description Reads a json file
#' @param pth the path to the yaml file
#' @return a nested list
#' @examples
#' \dontrun{
#' pth <- "./tests/testthat/test.json"
#' config <- read_json(pth)
#' }
read_json <- function(pth) {

    config <- rjson::fromJSON(file = file.path(pth), simplify = FALSE)

    return(config)
}

#' @title Exports yaml
#' @description Exports a yaml file
#' @param config the nested list to output as a configuration file
#' @param pth the path to the yaml file
#' @examples
#' \dontrun{
#' pth <- "./tests/testthat/test.yaml"
#' config <- read_yaml(pth)
#' config$test3 <- 3
#' update_yaml(pth)
#' }
update_yaml <- function(config, pth){


    yml <- yaml::as.yaml(config)
    write(yml, file.path(pth))
}

#' @title Export json
#' @description Updates a json file
#' @param config the nested list to output as a configuration file
#' @param pth the path to the yaml file
#' @examples
#' \dontrun{
#' pth <- "./tests/testthat/test.json"
#' config <- read_json(pth)
#' config$test3 <- 3
#' update_json(config, pth)
#' }
update_json <- function(config, pth) {


    json <- rjson::toJSON(config)
    jsonlite::write_json(config, file.path(pth))
}
