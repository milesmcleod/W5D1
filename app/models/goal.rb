class Goal < ApplicationRecord
  validates :body, :user, :private, presence: true

  belongs_to :user
  has_many :comments, as: :commentable

  before_validation :ensure_private_status

  def ensure_private_status
    self.private ||= false
  end
end
