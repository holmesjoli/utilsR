# Utils R

<!-- badges: start -->

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f1e0bbc39d9f42ab80ed22763d7dbc1c)](https://www.codacy.com/app/holmesjoli/utilsR?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=holmesjoli/utilsR&amp;utm_campaign=Badge_Grade)
[![Build status](https://travis-ci.org/holmesjoli/utilsR.svg?branch=master)](https://travis-ci.org/holmesjoli/utilsR)
[![Codecov test coverage](https://codecov.io/gh/holmesjoli/utilsR/branch/master/graph/badge.svg)](https://codecov.io/gh/holmesjoli/utilsR?branch=master)
<!-- badges: end -->

The utilsR package contains general utility functions for R. There are four groups of functions: column types, configuration read/update functions, creating folder structure/files, and logging functions.

## Col Types

Functions:

-   `test_vec_str`: Tests if the vector is a string
-   `test_vec_num`: Tests if the vector is number
-   `test_vec_bool`: Tests if the vector is boolean

## Config

Functions:

-   `read_yaml`: Reads in a yaml file
-   `read_json`: Reads in a json file
-   `update_yaml`: Updates a yaml file
-   `update_json`: Updates a json file

Note: You can execute R code from within YAML configuration files by prefacing values with `!expr`. E.g. 

```config.yaml
x: !expr 1:10
```

```R
config <- utilsR::read_yaml("./config.yaml")
config$x 

# prints 1  2  3  4  5  6  7  8  9 10
```

## Folder Structure

Functions:

-   `create_dirs`: Creates directories in the specified list
-   `create_files`: Creates files in the specified list
-   `remove_files`: Removes files in the specified list
-   `remove_dirs`: Removes directories in the specified list

## Logging

Functions:

-   `open_log`: Opens the log file
-   `close_log`: Closes the log file

`open_log` takes an argument fl, the name of the log file. The log functions also initiate time, so that it's easy to know how long a script file takes to run and logs the output all in one place.

## General

`%!in%` does the opposite of `%in%`

## Convert
 - `spss_to_csv`: converts a list of spss files to csv files
 - `csv_to_dat`: converts a list of csv files to dat files
 - `excel_to_dat`: converts a list of excel files to dat files
 
## Read
- `read_excel_all`: reads in all the sheets from an excel file. Built on top of `readxl::read_excel`.
