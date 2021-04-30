defmodule Poc5MinPwa.Repo do
  use Ecto.Repo,
    otp_app: :poc_5_min_pwa,
    adapter: Ecto.Adapters.Postgres
end
