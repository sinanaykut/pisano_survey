class Response < ApplicationRecord
  belongs_to :question
  belongs_to :option, optional: true
  belongs_to :feedback
end
