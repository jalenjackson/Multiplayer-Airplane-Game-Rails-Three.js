App.cable.subscriptions.create "GameroomsChannel",
  received: (data) ->
    new Notification data['title'], body: data['body']