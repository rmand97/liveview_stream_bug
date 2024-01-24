defmodule BugReportWeb.Live.Content do
  use BugReportWeb, :live_view

  def mount(_params, _session, socket) do
    items =
      Enum.map(1..10, fn x ->
        %{id: x, name: "item-#{x}"}
      end)

    {:ok, socket |> stream(:items, items), layout: false}
  end
end
