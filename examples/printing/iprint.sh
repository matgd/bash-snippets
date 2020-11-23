#!/bin/bash

iprint INFO "Informative text."
iprint WARN "Warning."
iprint FAILED "An error."
iprint OK "Success."

iprint FAILED "\nUnfortunately can't print additional newline at the beginning properly..."
iprint OK "But can print newlines at the end with no problem!\n"

iprint INVALID "Returns code 2."
iprint "Returns code 1."
