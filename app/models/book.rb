class Book < ApplicationRecord

  belongs_to :user
  validates :body, presence: true, length: { maximum: 200 }
  validates :title, presence: true, length: { in: 2..20 }

end
