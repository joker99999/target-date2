class Question1 < ActiveHash::Base
  self.data = [
    {id: 1, text: 'はい'}, {id: 2, text: 'いいえ'},
]
  include ActiveHash::Associations
  has_many :healths
end

