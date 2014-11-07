class Author < Activerecord::Base
	has_many :micro_posts, dependent: :destroy
end