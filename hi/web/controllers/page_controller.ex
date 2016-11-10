defmodule Hi.PageController do
  use Hi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
