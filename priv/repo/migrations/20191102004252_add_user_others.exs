defmodule Timesheet2.Repo.Migrations.AddUserOthers do
  use Ecto.Migration

  def change do
    alter table("users") do 
      add :manager_email, :string, default: nil, null: true
      add :is_manager, :boolean, default: false, null: false
      add :password_hash, :string, default: "", null: false
    end

  end
end
