# running with source, good for smaller analysis,
# but the same function names in different scripts would be rewritten
source("scripts/bargraph.r")
main("data/iris.data", "results/barplot.pdf")


# a slightly longer (but you can make function in this)
# everything is loaded into bagraph environment and you run it with:
# environment$function
# if you like this, see "modules" and "import" packages:
bargraph = new.env()
sys.source("scripts/bargraph.r", bargraph)
bargraph$main("data/iris.data", "results/barplot.pdf")


# as an external program, good only when you have external programs
system2(
    "Rscript",
    args=c(
        "scripts/bargraph_noninteractive.r",
        "data/iris.data"
        "results/barplot.pdf"
        )
    )
