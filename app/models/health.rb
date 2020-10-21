class Health < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user, optional: true
  belongs_to_active_hash :question1
  belongs_to_active_hash :question2
  belongs_to_active_hash :question3
  belongs_to_active_hash :question4
end
