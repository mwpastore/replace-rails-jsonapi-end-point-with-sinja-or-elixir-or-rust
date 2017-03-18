defmodule PlugBenchPhoenix.Router do
  use PlugBenchPhoenix.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PlugBenchPhoenix do
    pipe_through :api

    get "/mail-logs", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", PlugBenchPhoenix do
  #   pipe_through :api
  # end
end
