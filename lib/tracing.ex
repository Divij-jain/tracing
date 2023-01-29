defmodule Tracing do
  @moduledoc """
    Setup instrumentations
  """

  alias Tracing.Instrumentation.Instrumenter
  alias Tracing.Plugs.OpentelemetryPlug.Propagation

  def setup! do
    Instrumenter.setup!()
  end

  def propagate_trace do
    Propagation
  end
end
