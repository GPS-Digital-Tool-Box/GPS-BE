class User < ApplicationRecord
  validates :username,
            presence: true,
            format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }

  has_many :notebooks



end
