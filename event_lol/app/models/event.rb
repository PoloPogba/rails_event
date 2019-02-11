class Event < ApplicationRecord
    
    validates :dates, presence: true
    validates :duration, presence:true, numericality: { only_integer: true }
    validates :title, presence: true, length: {minimum: 5, maximum: 140}
    validates :description, presence: true, length: {minimum: 20, maximum: 1000}
    validates :price, presence: true, numericality: { only_integer: true }, :inclusion => 1..1000
    validates :location, presence: true
    belongs_to :admin, class_name: "User"
    has_many :attendances
    has_many :users, through: :user
end
