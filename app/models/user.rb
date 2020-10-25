class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, through: :user_groups
  has_many :targets
  has_many :questions
  has_many :shares
  has_many :sharecomments 

  def self.guest
    find_or_create_by(email: "test@com") do |user|
      user.password = Rails.application.secrets.test_account_pass
    end
  end

end
