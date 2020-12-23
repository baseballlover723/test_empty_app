defmodule TestEmptyApp.Repo do
  use Ecto.Repo,
    otp_app: :test_empty_app,
    adapter: Ecto.Adapters.Postgres
end
