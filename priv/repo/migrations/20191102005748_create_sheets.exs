defmodule Timesheet2.Repo.Migrations.CreateSheets do
  use Ecto.Migration

  def change do
    create table(:sheets) do
      add :date, :date
      add :worker_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:sheets, [:worker_id])
  end
end
