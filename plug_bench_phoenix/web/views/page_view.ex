defmodule PlugBenchPhoenix.PageView do
  use PlugBenchPhoenix.Web, :view
  use JaSerializer.PhoenixView

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

  # has_many :,
  #   serializer: PhoenixExample.CommentsView,
  #   include: false,
  #   identifiers: :when_included
end
