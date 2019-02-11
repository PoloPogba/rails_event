class Attendance < ApplicationRecord
    validates :strip_customer_id, uniqueness: true

belongs_to :user
belongs_to :event
end
