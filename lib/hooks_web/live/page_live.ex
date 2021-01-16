defmodule HooksWeb.PageLive do
  use HooksWeb, :live_view

  alias Hooks.Designer

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket), do: Designer.subscribe()
    {:ok, assign(socket, background_color: "#FFFFF")}
  end

  @impl true
  def handle_event("background_color", %{"color" => color}, socket) do
    Designer.broadcast_background_color(color)

    {:noreply, assign(socket, background_color: color)}
  end

  @impl true
  def handle_info({:update_background, color}, socket) do
    {:noreply, assign(socket, background_color: color)}
  end


end
