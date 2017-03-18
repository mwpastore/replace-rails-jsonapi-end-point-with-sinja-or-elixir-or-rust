defmodule PlugBenchPhoenix.PageView do
  use PlugBenchPhoenix.Web, :view
  use JaSerializer.PhoenixView

  attributes [:number]

  # has_many :,
  #   serializer: PhoenixExample.CommentsView,
  #   include: false,
  #   identifiers: :when_included
end
