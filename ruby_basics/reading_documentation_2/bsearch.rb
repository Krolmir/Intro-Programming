# Using bsearch to find the first element that exceeds 8 
a = [1, 4, 8, 11, 15, 19]

a.bsearch { |x| x > 8 }
