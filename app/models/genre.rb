class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'メニュー' },
    { id: 3, name: '期間限定' },
    { id: 4, name: 'サイド' }
  ]

  include ActiveHash::Associations
  has_many :foods

  end