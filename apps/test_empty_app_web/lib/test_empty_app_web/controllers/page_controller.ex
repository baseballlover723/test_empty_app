defmodule TestEmptyAppWeb.PageController do
  use TestEmptyAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
