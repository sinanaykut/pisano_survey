class Survey < ApplicationRecord
 has_many :questions
 has_many :feedbacks
end
