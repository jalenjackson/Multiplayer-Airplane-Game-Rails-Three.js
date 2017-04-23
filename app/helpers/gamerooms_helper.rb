module GameroomsHelper
  def hello
    ActionCable.server.broadcast 'web_notifications_1', { title: 'New things!', body: "All that's fit for print" }

  end
end
