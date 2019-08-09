defmodule LottoTest do
  use ExUnit.Case
  doctest Lotto

  Lotto.getLotto()
  |> IO.puts
end
