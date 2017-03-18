defmodule PlugBench.MailLog do
  use Ecto.Schema

  @derive {Poison.Encoder, only: [:number, :in_our_out, :document_date_on, :received_on, :external_number, :comment, :value_net, :value_vat, :lp, :inserted_at, :updated_at]}

  schema "mail_logs" do
    field :number, :string
    field :in_or_out, :string
    field :document_date_on, :date
    field :received_on, :date
    field :external_number, :string
    field :comment, :string
    field :value_net, :decimal
    field :value_vat, :decimal
    field :lp, :integer

    timestamps()

    belongs_to :category, PlugBench.Category
    belongs_to :company, PlugBench.Company
  end
end
