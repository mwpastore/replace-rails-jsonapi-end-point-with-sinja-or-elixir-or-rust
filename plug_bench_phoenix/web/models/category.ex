defmodule PlugBenchPhoenix.Category do
  use Ecto.Schema

  schema "categories" do
    field :name, :string

    timestamps()

    has_many :mail_log, PlugBenchPhoenix.MailLog
  end
end
