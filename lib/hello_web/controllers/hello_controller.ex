defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> put_layout(html: :admin)
    |> render(:index)
  end

  def show(conn, %{"messenger" => messenger}) do
    conn
    |> assign(:messenger, messenger)
    |> assign(:receiver, "Juan")
    |> render(:show)
  end
end
