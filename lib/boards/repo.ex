defmodule Boards.Repo do
  use Ecto.Repo,
    otp_app: :boards,
    adapter: Ecto.Adapters.Postgres
end
