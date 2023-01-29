defmodule Tracing.Instrumentation.Instrumenters.Phoenix do
  @moduledoc false

  def setup! do
    OpentelemetryPhoenix.setup()
  end
end
