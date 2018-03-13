class Company < ApplicationRecord
  include ApiKey
  #has_many :notifications, foreign_key: 'source_app', primary_key: 'source_app'
  has_many :categories
  has_many :turns
  validates_presence_of :api_key, :api_secret
  validates_uniqueness_of :api_key, :api_secret

  before_validation :set_api_key_and_secret

  private

  def set_api_key_and_secret
    self.api_key = ApiKey.generator
    self.api_secret = ApiKey.generator
  end
end
