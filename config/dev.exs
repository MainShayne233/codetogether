use Mix.Config

config :codetogether, Codetogether.Web.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [{Path.expand("assets/webpack.dev.js"), []}]


config :codetogether, Codetogether.Web.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/gettext/.*(po)$},
      ~r{lib/codetogether/web/views/.*(ex)$},
      ~r{lib/codetogether/web/templates/.*(eex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

config :codetogether, Codetogether.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "codetogether_dev",
  hostname: "localhost",
  pool_size: 10
