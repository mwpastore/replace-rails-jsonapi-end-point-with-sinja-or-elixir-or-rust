defmodule PlugBench.CompanySerializer do
  use JaSerializer

  location "/companies/:id"

  attributes [:name]
end
