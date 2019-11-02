# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Timesheet2.Repo.insert!(%Timesheet2.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Timesheet2.Repo
alias Timesheet2.Users.User

Repo.insert!(%User{name: "manager1", email: "manager1@test.com", is_manager: true, password: "password123456"})
Repo.insert!(%User{name: "worker1", email: "worker1@test.com", is_manager: false, manager_email: "manager1@test.com", password: "password123456"})
