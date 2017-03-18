defmodule PlugBenchPhoenix.PageController do
  use PlugBenchPhoenix.Web, :controller

  def index(conn, _params) do
    render(
      conn,
      "index.json-api",
      data: PlugBenchPhoenix.Repo.all(PlugBenchPhoenix.MailLog)
    )
  end
end
