defmodule Tracing.Instrumentation.Instrumenters.Repo do
  def setup! do
    OpentelemetryEcto.setup(prefix())
  end

  defp prefix do
    Application.fetch_env!(:tracing, :repo_telemetry_prefix)
  end
end
