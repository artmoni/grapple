defmodule Grapple.Plug do
  alias Grapple.Hook

  def init(opts) do
    Keyword.fetch! opts, :topic
  end

  # TODO: need to revisit
  def call(conn, topic, body) do
    resp = Hook.broadcast topic, body
    conn
  end
end
