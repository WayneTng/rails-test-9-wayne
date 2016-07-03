class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :parent, class_name: Comment
  has_many :replies, class_name: Comment, foreign_key: "parent_id", inverse_of:  :parent

  validates :message, presence: true
  validates :user_id, presence: true
end
