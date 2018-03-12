#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png opamp.pdf ./slide-png/prefix
