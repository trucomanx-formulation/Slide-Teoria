#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png aritmetica.pdf ./slide-png/prefix
