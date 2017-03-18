defmodule PlugBench.Company do
  use Ecto.Schema

  schema "companies" do
    field :name, :string
    field :icon, :string

    timestamps()

    has_many :mail_log, PlugBench.MailLog
  end
end
