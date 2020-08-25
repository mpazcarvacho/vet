class Client < ApplicationRecord
has_many :pets, dependent: :destroy
has_many :pet_histories,  through: :pets
validates :name, :email, presence: true
accepts_nested_attributes_for :pets, :pet_histories

  def pet_count
    pets.count
  end

  def to_s
    name
  end

  def pet_maximum_weight
    pet_histories.count
  end

  def pet_maximum_height
    pets.where(id: params[:pet]).pet_histories.maximum(:height)
  end

end
