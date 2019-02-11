# Problem: I need to create a stack register system that performs mathematical
#          operations

# Commands that needs to be implemented 

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the
#     result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, 
#     storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value,
#      storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value,
#     storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value,
#     storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

# Input: set of commands in string form, seperated by a space
# Output: the only printing we are doing is printing the register value when
#         called

# Steps:
# 1: Initialize a register variable set to 0
# 2: Initialize a Stack array set to []
# 3: Split the string into an array
# 4: Set up helper methods for every command
# 5: itterate over the array as each itteration should perform a stack command
# => invoke a case statment on command
# => call the desired helper method

def minilang(str)
  register = 0
  stack = []
  
  str.split.each do |command|
    case command
    when /[0-9]/ then register = command.to_i
    when 'ADD' then register = register + stack.pop 
    when 'PUSH' then stack << register 
    when 'SUB' then register = register - stack.pop 
    when 'MULT' then register = register * stack.pop 
    when 'DIV' then register = register / stack.pop 
    when 'MOD' then register = register % stack.pop 
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    end
  end
end
  
  
# Examples

# minilang('PRINT')
# # 0
# minilang('5 PUSH 3 MULT PRINT')
# # 15
# minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # # 5
# # # 3
# # # 8
# minilang('5 PUSH POP PRINT')
# # # 5
# minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# # # 5
# # # 10
# # # 4
# # # 7
# minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# # # 6
# minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# # # 12
# minilang('-3 PUSH 5 SUB PRINT')
# # # 8
# minilang('6 PUSH')
# # # (nothing printed; no PRINT commands)

OPERATION = { '*' => "MULT", "-" => 'SUB', "+" => "ADD", "%" => "MOD",
              "/" => "DIV"  }
NUMBERS = Array.new(100) { |i| (i + 1).to_s }


def miniclown(equation)
  p equation.split  
  
  
end







miniclown('(3 + (4 * 5) - 7) / (5 % 3)')
# ('3 ADD (4 MULT 5) SUBTRACT 7) DIV (5 MOD 3)')