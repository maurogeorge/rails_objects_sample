class User < ActiveRecord::Base

  attr_accessible :email, :name

  validates :name, :email, presence: true
  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ },
                    uniqueness: true
end
