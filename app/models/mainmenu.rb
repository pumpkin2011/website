class Mainmenu < ActiveRecord::Base
	# has_many_kindeditor_assets :content, :dependent => :destroy
	mount_uploader :avatar, AvatarUploader

	# scope :dis_flg, -> {where(dis_flg: 1)}
	default_scope { where(:dis_flg => 1) }
	default_scope { order("updated_at DESC") }
end
