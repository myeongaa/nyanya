class Bang < ActiveRecord::Base
    belongs_to :smallsort
    has_many :bang_regis
    has_many :users, through: :bang_regis
    has_many :comments
end
