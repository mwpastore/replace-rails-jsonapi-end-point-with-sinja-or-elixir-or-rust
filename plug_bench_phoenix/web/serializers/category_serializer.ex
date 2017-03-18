defmodule PlugBenchPhoenix.CategorySerializer do
  use JaSerializer

  location "/categories/:id"
  attributes [:name]
end
