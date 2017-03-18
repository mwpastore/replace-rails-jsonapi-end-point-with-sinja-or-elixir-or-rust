defmodule PlugBenchPhoenix.Company do
  use Ecto.Schema

  schema "companies" do
    field :name, :string
    field :icon, :string

    timestamps()

    has_many :mail_log, PlugBenchPhoenix.MailLog
  end
end
