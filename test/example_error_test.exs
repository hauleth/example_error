defmodule ExampleErrorTest do
  use ExUnit.Case
  doctest ExampleError

  test "greets the world" do
    assert ExampleError.hello() == :world
  end
end
