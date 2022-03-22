## code to prepare `my_dataset` dataset goes here
x <- url("https://raw.githubusercontent.com/chaninn/osFP/master/data-set/osfp-full-data-set.csv")
data_osfp = read.csv(x)
usethis::use_data(data_osfp, overwrite = TRUE)
