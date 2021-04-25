class Person < ApplicationRecord
    validates :name, presence: true
    validates :house_id, presence: true, uniqueness: true

    belongs_to :house,
        class_name: 'House',
        foreign_key: :house_id
end