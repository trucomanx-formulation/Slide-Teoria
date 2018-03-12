#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png diodos.pdf ./slide-png/prefix
