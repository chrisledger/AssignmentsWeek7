
#install.packages("RSQLite") #perhaps needed
library("RSQLite")

## connecting/using an existing file
system("ls *.db", show=TRUE)
sqlite    <- dbDriver("SQLite")
simplecharter <- dbConnect(sqlite,"c:/Users/Chris/Documents/SQLite/simplecharter.sqlite")

dbListTables(simplecharter)

BostonDB <- dbConnect(sqlite,"c:/Users/Chris/Documents/SQLite/Boston.sqlite")

#install MASS
library("MASS", lib.loc="C:/Program Files/R/R-3.1.0/library")

data.frame(Boston)

dbWriteTable(conn = BostonDB, name = "Boston", Boston, row.names = T, overwrite = T, append = F)

dbListTables(BostonDB)                   # The tables in the database
dbListFields(BostonDB, "Boston")         # The columns in a table
dbReadTable(BostonDB, "Boston")          # The data in a table

dbRemoveTable(BostonDB, "Boston")
