# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :plug_bench, ecto_repos: [PlugBench.Repo]

config :plug_bench, PlugBench.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "plug_bench_dev",
  username: "master",
  password: "secret",
  hostname: "localhost",
  pool_size: 100

config :guardian, Guardian,
  allowed_algos: ["HS512"], # optional
  verify_module: Guardian.JWT,  # optional
  issuer: "PlugBench",
  ttl: { 30, :days },
  allowed_drift: 2000,
  verify_issuer: true, # optional
  secret_key: "d3771a6ef7ea108d7b8cd3fcfab0cf88db4f600d5bf2cf3c5fe16b3c55ee175328183d62a6c6ad108d68ae00fa7a35f44749a470cc653bd9d6664668e48adee2",
  serializer: MyApp.GuardianSerializer

config :plug, :mimes, %{
  "application/vnd.api+json" => ["json-api"]
}
