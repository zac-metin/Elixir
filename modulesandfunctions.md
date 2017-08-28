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

# Functions

Elixir allows anonymous functions

Functions defined in a module are available to other modules to use.

One line functions can be shortened with do: and they don't need an end.
