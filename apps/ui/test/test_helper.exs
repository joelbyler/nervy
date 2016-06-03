ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Ui.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Ui.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Ui.Repo)

