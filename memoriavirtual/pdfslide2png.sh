#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png memoriavirtual.pdf ./slide-png/prefix
