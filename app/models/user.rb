class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, through: :user_groups
  has_many :targets
  has_many :questions
  has_many :queestioncomments 
  has_many :shares
  has_many :sharecomments 

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.username = "guestuser"
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
