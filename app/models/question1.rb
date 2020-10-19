class Question1 < ActiveHash::Base
  self.data = [
    {id: 1, anser: 'はい'}, {id: 2, anser: 'いいえ'},
]
  include ActiveHash::Associations
  has_many :healths
end

