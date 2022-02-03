class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze

  with_options presence: true do
    validates :nickname
    validates :password, format: { with: PASSWORD_REGEX, message: 'is invalid. Include both letters and numbers' }
    validates :last_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'is invalid. Input full-width characters' }
    validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'is invalid. Input full-width characters' }
    validates :last_name_kana, format: { with: /\A[ァ-ヶー]+\z/, message: 'is invalid. Input full-width katakana characters' }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー]+\z/, message: 'is invalid. Input full-width katakana characters' }
    validates :date_of_birth
  end

  has_many :items
  # has_many :orders # 後で
end
