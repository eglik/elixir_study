defmodule MacroOptionTest do
  Example.hello("Sean") |> IO.puts
  Example.test("uppercase!") |> IO.puts
  String.length("가") |> IO.puts
  byte_size("가") |> IO.puts
  Example.testz("binary") |> IO.puts
  Example.testz([1,2,3,4,5]) |> IO.puts
  IO.puts Example.test("uppercase string")
end
