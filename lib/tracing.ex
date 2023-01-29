defmodule Tracing do
  @moduledoc """
    Setup instrumentations
  """

  alias Tracing.Instrumentation.Instrumenter

  def setup! do
    Instrumenter.setup!()
  end
end
