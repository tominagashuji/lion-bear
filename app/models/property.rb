class Property < ApplicationRecord
    has_many :stations, inverse_of: :property
    accepts_nested_attributes_for :stations
end
