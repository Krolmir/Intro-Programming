# Build a program that displays when the user will retire and how many years 
# she has to work till retirement.

def prompt(message)
  p "=> #{message}"
end

prompt "What is your age?"
age = gets.chomp.to_i

prompt "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
working_years = retire_age - age
retire_year = current_year + working_years

prompt "It's #{current_year}. You will retire in #{retire_year}"
prompt "You have only #{working_years} years of work to go!"
