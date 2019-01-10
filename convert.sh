#!/bin/sh

convert -density 300 -crop 900x850+350+600 Uge-2.pdf[0] -depth 8 -flatten monday.png
tesseract monday.png monday -l dan

convert -density 300 -crop 900x850+1525+600 Uge-2.pdf[0] -depth 8 -flatten tuesday.png
tesseract tuesday.png tuesday -l dan

convert -density 300 -crop 900x850+350+1450 Uge-2.pdf[0] -depth 8 -flatten wednesday.png
tesseract wednesday.png wednesday -l dan

convert -density 300 -crop 900x850+1540+1470 Uge-2.pdf[0] -depth 8 -flatten thursday.png
tesseract thursday.png thursday -l dan

convert -density 300 -crop 900x850+350+2200 Uge-2.pdf[0] -depth 8 -flatten friday.png
tesseract friday.png friday -l dan

convert -density 300 -crop 900x850+1540+2290 Uge-2.pdf[0] -depth 8 -flatten  veggie.png
tesseract veggie.png veggie -l dan

