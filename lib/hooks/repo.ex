defmodule Hooks.Repo do
  use Ecto.Repo,
    otp_app: :hooks,
    adapter: Ecto.Adapters.Postgres
end
