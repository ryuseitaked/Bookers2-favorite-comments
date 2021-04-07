class Book < ApplicationRecord
	belongs_to :user
	has_many :favorites, dependent: :destroy

	validates :title, presence: true, length: {maximum: 20}
	validates :body, presence: true, length: {maximum: 200}
end
