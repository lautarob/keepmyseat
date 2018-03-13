class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :turn

  after_create_commit { NotificationBroadcastJob.perform_later self }
end
