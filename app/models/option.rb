class Option
  include Mongoid::Document
  field :description, type: String
  belongs_to :message

  has_many :responses
  validates :message_id, presence:true
end
