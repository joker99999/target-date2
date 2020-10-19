class Question3 < ActiveHash::Base
  self.data = [
    {id: 1, anser: 'とても良い'}, {id: 2, anser: 'やや良い'}, {id: 3, anser: 'どちらとも言えない'},
    {id: 4, anser: 'やや悪い'},{id: 5, anser: 'とても悪い'},
]
  include ActiveHash::Associations
  has_many :healths
end