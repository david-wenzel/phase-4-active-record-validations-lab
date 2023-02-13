class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
#   validate :clickbait_title

  
#   clickbait_phrases = ["Won't Believe", "Secret", "Top [number]", "Guess"]

#   def clickbait_title
#     if title.includes?{ |title| phrase.match title}
#         errors.add(:title, "make it clickbait")
#     end
#   end

end
