defmodule TestEmptyApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TestEmptyApp.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: TestEmptyApp.PubSub}
      # Start a worker by calling: TestEmptyApp.Worker.start_link(arg)
      # {TestEmptyApp.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: TestEmptyApp.Supervisor)
  end
end
