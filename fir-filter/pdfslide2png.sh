#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png fir1.pdf ./slide-png/prefix
