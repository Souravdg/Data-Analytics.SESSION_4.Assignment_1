# Return only the rows in which the left table have match.
#Inner join
df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
merge(df1, df2)

#(Returns all rows from both tables, join records from the left which have matching keys in theright
# Outer join
merge(x = df1, y = df2, by = "CustId", all = TRUE)

#Return all rows from the left table, and any rows with matching keys from the right table
#Left join
merge(x = df1, y = df2, by = "CustId", all.x = TRUE)

#Return all rows from the right table, and any rows with matching keys from the left table
#Right join
merge(x = df1, y = df2, by = "CustId", all.y = TRUE)