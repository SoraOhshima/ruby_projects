class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  #rails 06 追加分　それぞれのTopicは１つのUserを持つ
  belongs_to :user
  #rails 06 追加分　画像をアップロードするModel
  mount_uploader :image, ImageUploader
end
