class Definition < ActiveRecord::Base
  validates :word, presence: true
  validates :meaning, presence: true

  def fancy?
    self.word.length > 16
  end
end
