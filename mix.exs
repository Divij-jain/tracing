defmodule Tracing.MixProject do
  use Mix.Project

  def project do
    [
      app: :tracing,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # opentelemetry sdk
      {:opentelemetry, "~> 1.2"},
      # exporter
      {:opentelemetry_exporter, "~> 1.3"},
      # api for
      {:opentelemetry_ecto, "~> 1.1"},
      {:opentelemetry_phoenix, "~> 1.1"},
      {:opentelemetry_logger_metadata, "~> 0.1.0"},
      {:opentelemetry_redix, "~> 0.1.1"}
    ]
  end
end
