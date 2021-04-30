defmodule Poc5MinPwaWeb.PageController do
  use Poc5MinPwaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
