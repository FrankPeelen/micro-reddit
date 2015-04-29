class User < ActiveRecord::Base
	validates :name, presence: true, length: { in: 3..25 }, uniqueness: true,
						allow_blank: false
	has_many :posts
	has_many :comments
end
