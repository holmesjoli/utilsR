read_yaml <- function(pth) {
    #' Reads a yaml file
    #'
    #' Reads a yaml file
    #' @param pth the path to the yaml file
    #' @return a nested list
    #' @examples
    #' config <- read_yaml('C:/Documents/config.yaml')
    
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
    #' config <- read_json('C:/Documents/config.json')
    
    
    config <- rjson::fromJSON(file = file.path(pth))
    
    return(config)
    
}
