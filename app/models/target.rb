class Target < ApplicationRecord
  belongs_to :user, optional: true
end
