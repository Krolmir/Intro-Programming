#Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

def prompt(message)
  p "=> #{message}"
end

prompt "What is the bill:"
bill = gets.chomp.to_f

prompt "What is the tip %:"
tip = gets.chomp.to_f

tip = tip * 0.01

prompt "The tip is $#{bill * tip}"
prompt "The total is $#{bill + (bill * tip)}"
