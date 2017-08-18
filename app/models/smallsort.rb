class Smallsort < ActiveRecord::Base
    belongs_to :bigsort
    has_many :bangs
end
