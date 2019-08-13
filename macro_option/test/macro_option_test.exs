defmodule MacroOptionTest do
  Example.hello("Sean") |> IO.puts
  Example.test("uppercase!") |> IO.puts
  String.length("가") |> IO.puts
  byte_size("가") |> IO.puts
end
