defmodule Timesheet2.Repo.Migrations.AddSheetStatus do
  use Ecto.Migration

  def change do
     alter table("sheets") do
       add :status, :string, default: "pending", null: false
    end


  end
end
