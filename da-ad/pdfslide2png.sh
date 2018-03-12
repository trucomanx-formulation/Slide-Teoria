#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png da-ad.pdf ./slide-png/prefix
