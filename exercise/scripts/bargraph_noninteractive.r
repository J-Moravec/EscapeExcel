#!/usr/bin/Rscript

read_table = function(path){
    read.table(path, sep=",", header=TRUE, stringsAsFactors=FALSE)
    }


main = function(input, output){
    data = read_table(input)
    types = unique(data[,"species"])

    averages = c()
    for(type in types){
        subtable = data[ data[,"species"] == type, 1 ]
        averages[type] = mean(subtable)
        }

    lightred = adjustcolor("red", alpha.f=0.6)

    pdf(file=output)
        barplot(averages, col=lightred)
    invisible(dev.off())

    }

if(!interactive()){
    args = commandArgs(TRUE)
    main(args[1], args[2])
    }
