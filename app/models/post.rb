class Post < ActiveRecord::Base
	validates :title, presence: true, length: { in: 2..50 }, allow_blank: false
	belongs_to :user
	has_many :comments
end
