class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  # validate do
  #   return false unless title.include?("Won't Believe") || title.include?("Secret") || title.include?("Guess") || title.include?("Top ")
  # end

  # def clickbaity
  #   return false unless self.title.include?("Won't Believe") || self.title.include?("Secret") || self.title.include?("Guess") || self.title.include?("Top ")
  # end
end
