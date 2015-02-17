class Message
  include Mongoid::Document
  field :description, type: String
  field :created_at, type: Date
  field :destroy_at, type: Date

  belongs_to :user
  has_many :options
  has_many :responses
  validates :user_id, presence:true
end
