defmodule ElixirStudyTest do
  use ExUnit.Case
  doctest ElixirStudy

  ElixirStudy.add(1, 510) |> IO.puts
end
