class Recipe < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user # but only sometimes, right? see comment in config/routes.rb

  def self.search(query)
  # EXCELLENT use of model method!!!!
  # where(:title, query) -> This would return an exact match of the query
  where("ingredients ilike ?", "%#{query}%")
  end
end
