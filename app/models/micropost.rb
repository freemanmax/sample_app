class Micropost < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true

  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
  auto_html_for :content do
    html_escape
    sized_image
    youtube(:width => 820, :height => 450, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
  end
end
