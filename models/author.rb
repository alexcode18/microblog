class Author < ActiveRecord::Base
	has_many :micro_posts, dependent: :destroy
end