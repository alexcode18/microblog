class Tag < Activerecord::Base
	has_and_belongs_to_many :micro_posts
end