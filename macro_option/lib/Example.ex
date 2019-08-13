defmodule Example do
  @moduledoc """
  Macro option example test
  """

  use Hello, greeting: "Hola"

  @doc """
  test function doc
  """
  def test(string) do
    String.upcase(string)
  end
end
