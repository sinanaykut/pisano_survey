class Question < ApplicationRecord
  belongs_to :survey
  has_many :options, dependent: :destroy
  enum question_type: { text: 0, choice: 1 }
end
