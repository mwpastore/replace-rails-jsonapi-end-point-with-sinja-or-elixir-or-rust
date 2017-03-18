defmodule PlugBenchPhoenix.MailLogSerializer do
  use JaSerializer

  alias PlugBenchPhoenix.{CategorySerializer, CompanySerializer}

  location "/mail_logs/:id"
  attributes [
    :number,
    :in_or_out,
    :document_date_on,
    :received_on,
    :external_number,
    :comment,
    :value_net,
    :value_vat,
    :lp
  ]

  has_one :category,
    serializer: CategorySerializer,
    include: true,
    field: :category_id

  has_one :company,
    serializer: CompanySerializer,
    include: true,
    field: :company_id
end
