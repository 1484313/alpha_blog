class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimun: 3, maximum: 50}
  validates :description, presence: true,  length: { minimun: 3, maximum: 50}
end