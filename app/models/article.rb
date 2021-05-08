class Article < ApplicationRecord
  # means a title needs to be present for an article to be saved
  validates :title, presence: true, length: {minimum:6, maximum:100}
  validates :description, presence: true, length: {minimum:10, maximum:300}
end