class NotificationBroadcastJob < ApplicationJob
  queue_as :default
 
  def perform(notification)
    ActionCable.server.broadcast 'activity_channel', message: notification.message
  end
end
