defmodule Supple.PageController do
  use Supple.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
