# About

The utilsR package contains general utility functions for R


## Config

Contains functions related to reading in and updating configuration files.

* `read_yaml`: Reads in a yaml file
* `read_json`: Reads in a json file

## Folder Structure

The folder structure module contains functions:

* `create_dirs`: Creates directories in the specified list
* `create_files`: Creates files in the specified list
* `remove_files`: Removes files in the specified list
* `remove_dirs`: Removes directories in the specified list

## Logging

The logging module contains several functions as part of the logging class:

* `open_log`: Opens the log file
* `close_log`: Closes the log file

`open_log` takes an argument fl, the name of the log file. The log functions also initiate time, so that it's easy to know how long a script file takes to run and logs the output all in one place. 
