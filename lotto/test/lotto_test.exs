defmodule LottoTest do
  use ExUnit.Case
  doctest Lotto

  Lotto.getLotto()
  |> IO.puts

  Lotto.of([1,2,3]) |> IO.puts
end
