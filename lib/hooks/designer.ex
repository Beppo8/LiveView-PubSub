defmodule Teacher.Designer do

  def subscribe do
    Phoenix.PubSub.subscribe(Teacher.PubSub, "designer")
  end

  def broadcast_background_color(color) do
    Phoenix.PubSub.broadcast(Teacher.PubSub, "designer", {:update_background, color})
  end

end
