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
alias Timesheet2.Jobs.Job
pwhash = Argon2.hash_pwd_salt("password123456")

Repo.insert!(%User{name: "manager1", email: "manager1@test.com", is_manager: true, password_hash: pwhash})
Repo.insert!(%User{name: "worker1", email: "worker1@test.com", is_manager: false, manager_email: "manager1@test.com", password_hash: pwhash})

Repo.insert!(%User{name: "manager2", email: "manager2@test.com", is_manager: true, password_hash: pwhash})
Repo.insert!(%User{name: "worker2", email: "worker2@test.com", is_manager: false, manager_email: "manager2@test.com", password_hash: pwhash})

Repo.insert!(%User{name: "manager3", email: "manager3@test.com", is_manager: true, password_hash: pwhash})
Repo.insert!(%User{name: "worker3", email: "worker3@test.com", is_manager: false, manager_email: "manager3@test.com", password_hash: pwhash})

Repo.insert!(%Job{job_code: "VAOR-01", hours: 20, name: "Cyborg Arm", desc: "This is Job1.", user_id: 3})
Repo.insert!(%Job{job_code: "VAOR-02", hours: 45, name: "Sobriety Pill", desc: "This is Job2.", user_id: 5})
Repo.insert!(%Job{job_code: "VAOR-03", hours: 12, name: "Rat Cancer", desc: "This is Job3.", user_id: 5})
