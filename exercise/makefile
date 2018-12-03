# setting RECIPEPREFIX to plus sign instead of tabs:
.RECIPEPREFIX = +

# folder definition:
# (normally, result folder would me generated during make process)
SCRIPTS = scripts
DATA = data
RESULTS = results

# set targets:
all: $(RESULTS)/barplot.pdf


# target with dependency:
# $< and $@ are shortcuts for input and output
$(RESULTS)/barplot.pdf: $(DATA)/iris.data
+ Rscript $(SCRIPTS)/bargraph_noninteractive.r $< $@

 
# set phony stuff that do not require target:
.PHONY: clean


clean:
+ rm $(RESULTS)/*
