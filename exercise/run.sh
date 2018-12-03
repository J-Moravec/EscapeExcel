#!/bin/bash

# On Unix machines, you can run scripts easily through bash:
# either through Rscript:
Rscript scripts/bargraph_noninteractive.r data/iris.data results/barplot.pdf

# or if you make script executable: chmod+x scripts/bargraph.r
# you can run it like this since we included the shebang string:
scripts/bargraph_noninteractive.r data/iris.data results/barplot.pdf
