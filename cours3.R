data <- read.csv("cours1.csv", fileEncoding = "UTF-8",stringsAsFactors=F)
tab <- table(data$appétence.codage..1.fort.4.mauvais)
barplot(tab,col = heat.colors(5),border = NA,xlab = "appétence,(1 oui - 4 non)")
tab <- table(data$futur)
erik <- names(tab)
names(tab)
barplot(tab,names.arg = names(tab),las=2)
motif <- grep("rba",data$futur)
data$futur[motif]
str(data)
data$futur==""
data$futur[data$futur==""]
data$futur[data$futur==""] <- NA
tab <- table(data$futur,useNA = "always")
