#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png pipeline.pdf ./slide-png/prefix
