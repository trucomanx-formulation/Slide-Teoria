#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png combinacional.pdf ./slide-png/prefix
