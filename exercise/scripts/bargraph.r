args = commandArgs(TRUE)


read_table = function(path){
    read.table(path, sep=",", header=TRUE, stringsAsFactors=FALSE)
    }


main = function(path){
    data = read_table(path)
    types = unique(data[,"species"])

    averages = c()
    for(type in types){
        subtable = data[ data[,"species"] == type, 1 ]
        averages[type] = mean(subtable)
        }
    lightred = adjustcolor("red", alpha.f=0.6)

    pdf(file="results/barplot.pdf")
        barplot(averages, col=lightred)
    invisible(dev.off())

    }

main()
