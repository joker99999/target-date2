class Health < ApplicationRecord
  belongs_to :user
  belongs_to_active_hash :question1
  belongs_to_active_hash :question2
  belongs_to_active_hash :question3
  belongs_to_active_hash :question4
end
