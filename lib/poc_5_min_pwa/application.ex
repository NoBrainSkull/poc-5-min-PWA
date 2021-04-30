defmodule Poc5MinPwa.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Poc5MinPwa.Repo,
      # Start the Telemetry supervisor
      Poc5MinPwaWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Poc5MinPwa.PubSub},
      # Start the Endpoint (http/https)
      Poc5MinPwaWeb.Endpoint
      # Start a worker by calling: Poc5MinPwa.Worker.start_link(arg)
      # {Poc5MinPwa.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Poc5MinPwa.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Poc5MinPwaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
