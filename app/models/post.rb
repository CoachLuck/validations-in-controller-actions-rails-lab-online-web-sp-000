class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, inclusion: {in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category"}
  validates :content, length: { minimum: 100 }

  def category?
    category == "Fiction" || category == "Non-Fiction"
  end
end
