class Group
  include Mongoid::Document
  field :group_name, type: String
  field :created_at, type: Date
  belongs_to :user
end
