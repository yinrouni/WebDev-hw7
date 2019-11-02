defmodule Timesheet2.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :hours, :integer
      add :notes, :text
      add :job_id, references(:jobs, on_delete: :nothing)
      add :sheet_id, references(:sheets, on_delete: :nothing)

      timestamps()
    end

    create index(:tasks, [:job_id])
    create index(:tasks, [:sheet_id])
  end
end
