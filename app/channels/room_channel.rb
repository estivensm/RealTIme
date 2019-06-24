class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "demo"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
  	Task.create! title: data["message"]
  end
end
