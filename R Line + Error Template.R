library(ggplot2)
ggplot(CSVfilename, aes(x=CSVcolumnrefX, y1=CSVcolumnref1.Mean, y2=CSVcolumnref2.Mean, y3=CSVcolumnref3.Mean, y4=CSVcolumnref4.Mean, group = 1)) + 
    geom_errorbar(aes(ymin=CSVcolumnref1.Mean-CSVcolumnref1.SE, ymax=CSVcolumnref1.Mean+CSVcolumnref1.SE), colour="#000099", width=.1) +
    geom_errorbar(aes(ymin=CSVcolumnref2.Mean-CSVcolumnref2.SE, ymax=CSVcolumnref2.Mean+CSVcolumnref2.SE), colour="#990000", width=.1) +
    geom_errorbar(aes(ymin=CSVcolumnref3.Mean-CSVcolumnref3.SE, ymax=CSVcolumnref3.Mean+CSVcolumnref3.SE), colour="#009900", width=.1) +
    geom_errorbar(aes(ymin=CSVcolumnref4.Mean-CSVcolumnref4.SE, ymax=CSVcolumnref4.Mean+CSVcolumnref4.SE), colour="#FFA500", width=.1) +
    geom_line(data = CSVfilename, aes(Hours, CSVcolumnref1.Mean), colour="#000099") +
    geom_line(data = CSVfilename, aes(Hours, CSVcolumnref2.Mean), colour="#990050") +
    geom_line(data = CSVfilename, aes(Hours, CSVcolumnref3.Mean), colour="#009900") +
    geom_line(data = CSVfilename, aes(Hours, CSVcolumnref4.Mean), colour="#FFA500") +
    labs(title = "Chart Title" ,
         x = "X axis lable" ,
         y = "Y axis lable")