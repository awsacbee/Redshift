install.packages("rJava")
sessionInfo()
library(rJava)

install.packages("RJDBC")
library(RJDBC)

# download Amazon Redshift JDBC driver
download.file('http://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC41-1.1.9.1009.jar','RedshiftJDBC41-1.1.9.1009.jar')

# connect to Amazon Redshift
driver <- JDBC("com.amazon.redshift.jdbc41.Driver", "RedshiftJDBC41-1.1.9.1009.jar", identifier.quote="`")
# url <- "<JDBCURL>:<PORT>/<DBNAME>?user=<USER>&password=<PW>

url <- "http://user-data.crskqa5rquv5.us-west-2.redshift.amazonaws.com:5439/sbnddata?user=master&password=nd6XnOP9uU1M"
conn <- dbConnect(driver, url)