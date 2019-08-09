defmodule ElixirStudy do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/users/:name" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode!(%{:name => name}))
  end

  match _ do
    send_resp(conn, 404, "opps")
  end

  def start(_type, _args) do
    "Server Start" |> IO.puts
    Plug.Adapters.Cowboy.http(__MODULE__, [])
  end

  def hello(names) when is_list(names) do
    names
    |> Enum.join(", ")
    |> hello
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  defp phrase, do: "Hello, "
end
