ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Supple.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Supple.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Supple.Repo)

