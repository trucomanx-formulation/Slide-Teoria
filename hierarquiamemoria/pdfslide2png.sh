#!/bin/bash
mkdir slide-png
pdftoppm -r 300 -png hierarquiamemoria.pdf ./slide-png/prefix
