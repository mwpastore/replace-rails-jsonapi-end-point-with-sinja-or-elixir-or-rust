defmodule PlugBench.Endpoint do
  import Plug.Conn
  import Ecto.Query

  use Plug.Router

  plug :match
  plug Plug.Parsers, parsers: [:urlencoded],
                     pass: ["*/*"],
                     accept: ["*/*"]
  plug :dispatch

  get "/mail-logs" do
    data = PlugBench.Repo.all(PlugBench.MailLog)

    send_resp(
      conn,
      200,
      PlugBench.MailLogSerializer.format(data, conn)
      |> Poison.encode!
    )
  end

  match _ do
    conn
      |> put_resp_content_type("application/json")
      |> send_resp(410, ~s({"status": "bad request"}))
  end
end
