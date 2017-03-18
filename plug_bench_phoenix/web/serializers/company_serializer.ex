defmodule PlugBenchPhoenix.CompanySerializer do
  use JaSerializer

  location "/companies/:id"
  attributes [:name, :icon]
end
