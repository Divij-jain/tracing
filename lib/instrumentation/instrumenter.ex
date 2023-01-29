defmodule Tracing.Instrumentation.Instrumenter do
  @moduledoc """
   Setup instrumentations
  """

  alias Tracing.Instrumentation.Instrumenters.{Repo, Phoenix, Redix}

  def setup! do
    Repo.setup!()
    Phoenix.setup!()
    Redix.setup!()
    OpentelemetryLoggerMetadata.setup()
  end
end
