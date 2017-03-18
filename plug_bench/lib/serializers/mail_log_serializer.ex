defmodule PlugBench.MailLogSerializer do
  use JaSerializer

  location "/mail-logs/:id"
  attributes [:name, :number, :in_or_out, :document_date_on, :received_on,
              :external_number, :comment, :value_net, :value_vat, :lp]

  # has_one :company,
  #   serializer: PlugBench.CompanySerializer,
  #   include: true,
  #   field: :company_id

  # has_one :category,
  #   serializer: PlugBench.CategorySerializer,
  #   include: true,
  #   field: :category_id
end
