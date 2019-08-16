defmodule Animal do
  @moduledoc """
  Animal document
  """

  @doc """
  create zoo return animal list
  """
  def create_zoo do
    ["lion", "tiger", "gorilla", "elephant", "moneky", "giraffe"]
  end

  @doc """
  animal enum list randomize
  """
  def randomize(zoo) do
    Enum.shuffle(zoo)
  end

  @doc """
  return bool animal is contain zoo
  """
  def contains?(zoo, animal) do
    Enum.member?(zoo, animal)
  end

  @doc """
  see_animals takes a list of zoo animals and the number of animals that
  you want to see and then returns a list

  ## Examples

      iex> zoo = Animals.create_zoo
      iex> Animals.see_animals(zoo, 2)
      ["monkey", "giraffe"]
  """
  def see_animal(zoo, count) do
    {_seen, to_see } = Enum.split(zoo, -count)
    to_see
  end

  def save(zoo, filename) do
    binary = :erlang.term_to_binary(zoo)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File does not exist"
    end
  end

  def selection(number_of_animals) do
    Animal.create_zoo
    |> Animal.randomize
    |> Animal.see_animal(number_of_animals)
  end
end
