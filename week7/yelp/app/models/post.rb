class Post < ApplicationRecord
  validates :restaurant, presence: true,
                    length: { minimum: 5 }
end
