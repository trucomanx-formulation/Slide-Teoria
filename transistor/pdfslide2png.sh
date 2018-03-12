#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png transistor.pdf ./slide-png/prefix
