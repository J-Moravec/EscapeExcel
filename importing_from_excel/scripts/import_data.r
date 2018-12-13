# importing data from xlsx
library("tidyr")

read_data = function(filename){
    data = read.table(
        filename,
        sep=",",
        stringsAsFactors=FALSE,
        )
    data = data[-(1:24),]
    data = convert_comma(data)
    new_data = as.matrix(data[-1, -1])
    mode(new_data) = "numeric"
    new_data = as.data.frame(new_data)
    col_names = data[1,-1]
    row_names = data[-1, 1]
    colnames(new_data) = col_names
    rownames(new_data) = row_names
    return(new_data)
    }


convert_comma = function(table){
    apply(table,
        c(1,2),
        sub,
        pattern=",",
        replacement=".",
        fixed=TRUE
        )
    }

transform_data = function(data){
    ndata = cbind(data, "time"=rownames(data))
    ndata = gather(ndata, value="measure", key="well", -time)
    ndata[,c("well", "time", "measure")]
    }


write_data = function(data, filepath){
    write.table(
        data,
        filepath,
        quote=FALSE,
        sep="\t",
        row.names=FALSE
        )
    }


main = function(inputfile, outputfile){
    data = read_data(inputfile)
    data = transform_data(data)
    write_data(data, outputfile)
    }


if(!interactive()){
    args = commandArgs(TRUE)
    main(args[1], args[2])
    }

