class Task < ApplicationRecord
  enum state: [:to_do, :done]
end
