#' @title dfsort
#' @description Function that sorts data frame by column value
#' @param df The data frame to be sorted
#' @param col The column name being used to sort the data frame
#' @param desc Sets the sorting to descending order, set to FALSE by default


sortby <- function(df, col, desc = FALSE) {
  #### df is the dataframe to be sorted
  #### col is the variable by which it should be sorted
  #### desc indicates whether the sort order should be descending
  #### str2expression() allows us to dynamically create a df$col
  ####     variable which gets evaluated by eval()
  df[order(
    eval(
      str2expression(paste0("df$", col))
    ),
    decreasing = desc
  ),]
}

#' @reference
