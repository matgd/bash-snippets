#!/bin/bash

function iprint {
    ###
    # Author: matgd
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

# Examples:

iprint INFO "Informative text."
iprint WARN "Warning."
iprint FAILED "An error."
iprint OK "Success."

iprint FAILED "\nUnfortunately can't print additional newline at the beginning properly..."
iprint OK "But can print newlines at the end with no problem!\n"

iprint INVALID "Returns code 2."
iprint "Returns code 1."
