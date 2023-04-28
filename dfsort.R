# dfsort
# Function that sorts data frame by highest/lowest column value

sortby <- function(df, col, desc = FALSE) {
  #### df is the dataframe to be sorted
  #### col is the variable by which it should be sorted
  #### desc indicates whether the sort order should be descending
  #### str2expression() allows us to dynamically create a df$col
  #### variable which gets evaluated by eval()
  df[order(
    eval(
      str2expression(paste0("df$", col))
    ),
    decreasing = desc
  ),]
}

