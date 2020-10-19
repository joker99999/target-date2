class Question4 < ActiveHash::Base
  self.data = [
    {id: 1, anser: 'とても高い'}, {id: 2, anser: 'やや高い'}, {id: 3, anser: 'どちらとも言えない'},
    {id: 4, anser: 'やや低い'},{id: 5, anser: 'とても低い'},
]
  include ActiveHash::Associations
  has_many :healths
end