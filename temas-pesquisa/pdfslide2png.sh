#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png temas.pdf ./slide-png/prefix
