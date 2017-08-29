# Modules

The only way to have a named function is to place it inside a module.

.ex and .exs files for elixir

defmodule ModuleName do
  def say_here do
    IO.puts "Here"
  end
end

# Module Directives

defmodule ModuleName do
import IO
  def say_here do
    puts "Here"
  end
end

defmodule ModuleName do
import IO, only: [puts: 1] //arity is the number
import Kernel, except: [inspect: 1]
  def say_here do
    puts "Here"
  end

  def inspect(param1) do     //here inspect collides with a Kernel function
    puts "Starting Output"
    puts param1
    puts "Ending Output"
  end
end


can rename with alias command
alias ModulePlayground.Misc.Util.Math, as MyMath

require Integer

will bring in macros

# Functions

Elixir allows anonymous functions

Functions defined in a module are available to other modules to use.

One line functions can be shortened with do: and they don't need an end.

defmodule Sample.Enum do
  def first(list) do
    hd(list) // gets the hd
  end
end

In elixir functions return the last evaluated expression

Functions arity:

function name + / {number of parameters}

eg: first/1

# Pattern Matching

defmodule Sample.Enum do
  def first([head | tail]) do
    head
  end
end

Is the same as the example above.

defmodule Sample.Enum do
  def first([]) do: nil
  def first([head | tail]) do: head
end

# Guard Clauses

defmodule Sample.Enum do
  def first(list) when length(list) ==0, do: nil
  def first([head | tail]), do: head
end

Most operators are available in guard clauses

# Default Parameters \\

def add(list, val \\ 0) do - this means that if no value is specified, the value is 0
[val | list]  

# Private Functions

defp instead of def

defp trace(string) do
  IO.puts("The value passed in was #{string}")
end

# Anonymous Functions

list = [1,2,3,4] // in iex

Enum.map(list, fn(x) -> x*x end)

def custom_func(a,f) do
  f.(a)   //needs the dot because you're calling an anonymous function
end
