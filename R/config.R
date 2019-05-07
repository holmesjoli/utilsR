read_yaml <- function(pth) {
    #' Reads a yaml file
    #'
    #' Reads a yaml file
    #' @param pth the path to the yaml file
    #' @return a nested list
    #' @examples
    #' pth <- "./tests/testthat/test.yaml"
    #' config <- read_yaml(pth)

    config <- yaml::yaml.load_file(file.path(pth))

    return(config)

}

read_json <- function(pth) {
    #' Reads a json file
    #'
    #' Reads a json file
    #' @param pth the path to the yaml file
    #' @return a nested list
    #' @examples
    #' pth <- "./tests/testthat/test.json"
    #' config <- read_json(pth)

    config <- rjson::fromJSON(file = file.path(pth), simplify = FALSE)

    return(config)

}

update_yaml <- function(config, pth){
    #' Exports a yaml file
    #'
    #' Exports a yaml file
    #' @param config the nested list to output as a configuration file
    #' @param pth the path to the yaml file
    #' @examples
    #' pth <- "./tests/testthat/test.yaml"
    #' config <- read_yaml(pth)
    #' config$test3 <- 3
    #' update_yaml(pth)

    yml <- yaml::as.yaml(config)
    write(yml, file.path(pth))
}

update_json <- function(config, pth) {
    #' Updates a json file
    #'
    #' Updates a json file
    #' @param config the nested list to output as a configuration file
    #' @param pth the path to the yaml file
    #' @examples
    #' pth <- "./tests/testthat/test.json"
    #' config <- read_json(pth)
    #' config$test3 <- 3
    #' update_json(config, pth)

    json <- rjson::toJSON(config)
    jsonlite::write_json(config, file.path(pth))
}
