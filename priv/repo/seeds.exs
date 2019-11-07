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

pwhash = Argon2.hash_pwd_salt("password123456")

Repo.insert!(%User{name: "manager2", email: "manager2@test.com", is_manager: true, password_hash: pwhash})
Repo.insert!(%User{name: "worker2", email: "worker2@test.com", is_manager: false, manager_email: "manager1@test.com", password_hash: pwhash})
