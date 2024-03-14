class Patient < ApplicationRecord
    has_many :observation
    accepts_nested_attributes_for :observation
end
