class Sharecomment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :share, optional: true
end