class GameroomsChannel < ApplicationCable::Channel

  def subscribed
    current_user.gamerooms.each do |gameroom|
      stream_from "gameroom:#{gameroom.id}"
    end
  end

  def unsubscribed
    stop_all_streams
  end

  def move
    x = 100
    y = 100
    x2 = -100
    y2 = 100
  end
end
