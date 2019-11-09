# Timesheet2

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Sample Data for Test
#### Users
id email name is_manager manager_email password

1 manager1@test.com manager1 t null password123456

2 worker1@test.com worker1 f manager1@test.com  password123456

3 manager2@test.com manager2 t null password123456

4 worker2@test.com worker2 f manager2@test.com password123456

5 manager3@test.com manager3 t null password123456

6 worker3@test.com worker3 f manager2@test.com  password123456

#### Jobs
Job_Code	Budget (Hours)	Name manager_id	Description

VAOR-01	20	Cyborg Arm 3 desc1

VAOR-02	45	Sobriety Pill	 5 desc2

VAOR-03	12	Rat Cancer	 5 desc3

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
