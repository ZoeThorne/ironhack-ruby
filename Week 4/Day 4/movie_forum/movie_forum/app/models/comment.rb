class Comment < ApplicationRecord
  belongs_to :movie
  attr_accessor :comments
end
