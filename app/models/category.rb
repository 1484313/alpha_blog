class Category < ApplicationRecord
	has_many :article_categories
  has_many :categories, throught: :article_categories
  
	validates :name, presence: true,
	        length: { minimum: 3, maximum: 25}
  validates_uniqueness_of :name
	end