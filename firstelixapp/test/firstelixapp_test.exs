defmodule FirstelixappTest do
  use ExUnit.Case
  doctest Firstelixapp

  test "greets the world" do
    assert Firstelixapp.hello() == :world
  end
end
