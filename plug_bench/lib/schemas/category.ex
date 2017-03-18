defmodule PlugBench.Category do
  use Ecto.Schema

  schema "categories" do
    field :name, :string

    timestamps()

    has_many :mail_log, PlugBench.MailLog
  end
end
