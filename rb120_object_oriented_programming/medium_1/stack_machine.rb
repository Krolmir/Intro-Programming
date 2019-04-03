require 'pry'

class MyRuntimeError < RuntimeError; end
class InvalidTokenError < MyRuntimeError; end
class EmptyStackError < MyRuntimeError; end

class Minilang
  attr_reader :commands, :register, :stack

  def initialize(string)
    @register = 0
    @stack = []
    @commands = split_string(string)
  end

  def split_string(string)
    string.split(' ')
  end

  def run_command(command)
    if i?(command)
      number_to_register(command.to_i)
    else
      command_case(command)
    end
  end

  def command_case(command)
    case command
    when 'PRINT'
      print_register
    when 'PUSH'
      push
    when 'ADD'
      add
    when 'SUB'
      subtract
    when 'MULT'
      mult
    when 'DIV'
      div
    when 'MOD'
      mod
    when 'POP'
      pop
    else
      raise InvalidTokenError, "Invalid token: #{command}"
    end
  end

  def eval
    commands.each do |command|
      run_command(command)
    end
  rescue MyRuntimeError => error
    puts error.message
  end

  def i?(num)
    num =~ /\A[-+]?[0-9]+\z/
  end

  def print_register
    puts register
  end

  def number_to_register(num)
    @register = num
  end

  def push
    @stack << @register
  end

  def add
    @register += pop
  end

  def subtract
    @register -= pop
  end

  def mult
    @register *= pop
  end

  def div
    @register /= pop
  end

  def mod
    @register %= pop
  end

  def pop
    raise EmptyStackError, 'Empty Stack!' if @stack.empty?
    @register = @stack.pop
  end
end

# require 'set'

# class MinilangRuntimeError < RuntimeError; end
# class BadTokenError < MinilangRuntimeError; end
# class EmptyStackError < MinilangRuntimeError; end

# class Minilang
#   ACTIONS = Set.new %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

#   def initialize(program)
#     @program = program
#   end

#   def eval
#     @stack = []
#     @register = 0
#     @program.split.each { |token| eval_token(token) }
#   rescue MinilangRuntimeError => error
#     puts error.message
#   end

#   private

#   def eval_token(token)
#     if ACTIONS.include?(token)
#       send(token.downcase)
#     elsif token =~ /\A[-+]?\d+\z/
#       @register = token.to_i
#     else
#       raise BadTokenError, "Invalid token: #{token}"
#     end
#   end

#   def push
#     @stack.push(@register)
#   end

#   def pop
#     raise EmptyStackError, "Empty stack!" if @stack.empty?
#     @register = @stack.pop
#   end

#   def add
#     @register += pop
#   end

#   def div
#     @register /= pop
#   end

#   def mod
#     @register %= pop
#   end

#   def mult
#     @register *= pop
#   end

#   def sub
#     @register -= pop
#   end

#   def print
#     puts @register
#   end
# end

Minilang.new('PRINT').eval
# 0
Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15
Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8
Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5
Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6
Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12
Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8
Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!
Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB
