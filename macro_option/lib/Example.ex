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

  def testz(data) when is_list(data) do
    "data is list"
  end

  def testz(data) when is_binary(data) do
    "data is binary"
  end
end
