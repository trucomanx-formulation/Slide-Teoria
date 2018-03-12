#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png sequencial.pdf ./slide-png/prefix
