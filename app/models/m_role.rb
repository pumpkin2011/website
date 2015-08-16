class MRole < ActiveRecord::Base
	has_many :members, :foreign_key => "role"
end
