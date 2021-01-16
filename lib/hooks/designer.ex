defmodule Hooks.Designer do

  def subscribe do
    Phoenix.PubSub.subscribe(Hooks.PubSub, "designer")
  end

  def broadcast_background_color(color) do
    Phoenix.PubSub.broadcast(Hooks.PubSub, "designer", {:update_background, color})
  end

end
