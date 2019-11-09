use Mix.Config

# Configure your database
config :timesheet2, Timesheet2.Repo,
  username: "timesheet2",
  password: "OhmaQu1Tee5E",
  database: "timesheet2_prod",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :timesheet2, Timesheet2Web.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
