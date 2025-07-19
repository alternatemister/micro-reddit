class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { maximum: 300 }, uniqueness: true
  validates :body, presence: true, length: { maximum: 40000 }
  validates :user_id, presence: true
end
