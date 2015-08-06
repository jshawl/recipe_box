class Recipe < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user

  def self.search(query)
  # where(:title, query) -> This would return an exact match of the query
  where("ingredients ilike ?", "%#{query}%")
  end
end
