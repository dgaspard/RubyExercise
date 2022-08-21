class Marticle < ApplicationRecord
   validates :mtitle, presence: true, length: {minimum: 6, maximum: 100}
   validates :mdescription, presence: true, length: {minimum: 10, maximum: 100}
end