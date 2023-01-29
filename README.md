# Tracing

Elixir Library built over opentelemetry that instruments traces for 
* phoneix events
* ecto events
* redix(redis) events
* Logger metadata

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `tracing` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:tracing, "~> 0.1.0"}
  ]
end
```

### configuring tracing in your project

```elixir
config :tracing, :repo_telemetry_prefix, [:app_name, :repo]
```

### To export traces on console/stdout
```elixir
config :opentelemetry, :processors,
  otel_batch_processor: %{
    exporter: {:otel_exporter_stdout, []}
  }
```

### To export traces on directly to remote port 
```elixir
config :opentelemetry, :processors,
  otel_batch_processor: %{
    exporter: {
      :opentelemetry_exporter,
      %{
        endpoints: [
          {:http, 'localhost', 55681, []}
        ]
      }
    }
  }
```

setup 
add below line in application.ex supervision tree
```elixir
Tracing.setup!() 
```

To propagate trace_id back in response headers.
add plug to your endpoint.ex file.

```elixir
plug Tracing.propagate_trace
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/tracing>.
