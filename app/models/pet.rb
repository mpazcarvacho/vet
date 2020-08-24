class Pet < ApplicationRecord
  belongs_to :client
  has_many :pet_histories, dependent: :destroy
  accepts_nested_attributes_for :pet_histories
  validates :name, :client, presence: true

  def visits_count
    pet_histories.count
  end

  def to_s
    name
  end

end
