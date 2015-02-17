class Response
  include Mongoid::Document

  belongs_to :user
  belongs_to :option
  belongs_to :message

  validates_presence_of :user_id, :option_id, :message_id
end
