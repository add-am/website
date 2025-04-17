#a simple function to create a stylish printed table.
#Input: a df object

library(huxtable)

cond_form_tables <- function(df, header_rows = 1){
  
  #convert input dataframe to a huxtable type
  df <- as_hux(df)
  
  #style the hux table into our desired look
  df <- df |> 
    set_bold(row = 1:header_rows, col = everywhere) |> #make header(s) bold
    set_top_border(row = 1, col = everywhere) |> #add border to top of row one
    set_bottom_border(row = header_rows, col = everywhere) |> #add border to bottom of header(s) row
    set_bottom_border(row = nrow(df), col = everywhere) |> #add border to very bottom of table
    set_width(1) |> #set width depending on page orientation
    set_font_size(row = everywhere, col = everywhere, value = 9)#set the font size
  
  return(df)
  
}