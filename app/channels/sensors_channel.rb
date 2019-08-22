class SensorsChannel < ApplicationCable::Channel
  def subscribed
     stream_from "sensors"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
