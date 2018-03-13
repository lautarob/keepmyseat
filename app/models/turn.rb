class Turn < ApplicationRecord
  belongs_to :category
  belongs_to :company
  belongs_to :user
  has_many :notifications, dependent: :destroy
  enum status: { waiting: 0, calling: 1, ongoing: 2, used: 3 }
  scope :active, -> { where(status: [:waiting, :calling, :ongoing]) }

  after_create_commit { create_notification }  
  after_update :update_notification

  private
 
  def create_notification
    Notification.create message: "You have been asigned a turn by #{company.name}, your turn is: #{category.codeletter}#{turn_number}", user: user, turn: self 
  end

  def update_notification
    Notification.create message: "#{company.name} is calling your turn #{category.codeletter}#{turn_number}", user: user, turn: self if self.status == "calling"
    Notification.create message: "Turn #{category.codeletter}#{turn_number} on #{company.name} is ongoing", user: user, turn: self if self.status == "ongoing"
  end
end
