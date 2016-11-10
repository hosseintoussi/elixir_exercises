defmodule Hi.HiController do
  use Hi.Web, :controller

  def hello(conn, %{"name" => name}) do
    render conn, "hello.html", name: name
  end
  def hello(conn, %{}) do
    render conn, "hello.html", name: "stranger"
  end
end
