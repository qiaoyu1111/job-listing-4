class Resume < ApplicationRecord
  belongs_to :user
  belongs_to :task

  mount_uploader :attachment, AttachmentUploader

  validates :content, presence: true
end
