class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo

  validates :content, presence: true

  validates :rating, presence: true,
            numericality: {less_than_or_equal_to: 5 }
end
