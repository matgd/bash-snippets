#!/bin/bash

function iprint {
    ###
    # License: MIT (https://github.com/matgd/bash-snippets)
    #
    # Function for informative printing. 
    # Params:
    #   $1 - printing mode {INFO, WARN, FAILED, OK}
    #   $2 - message to be printed
    [[ $# -ne 2 ]] && return 1

    case "$1" in
        "INFO")   printf "\e[90m[\e[0m INFO \e[90m]\e[0m ${2}\n";;
        "WARN")   printf "\e[90m[\e[93m WARN \e[90m]\e[93m ${2}\e[0m\n";;
        "FAILED") printf "\e[90m[\e[91mFAILED\e[90m]\e[91m ${2}\e[0m\n";;
        "OK")     printf "\e[90m[\e[92m  OK  \e[90m]\e[92m ${2}\e[0m\n";;
        *)        return 2
    esac
}

