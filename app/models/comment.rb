class Comment < ActiveRecord::Base
    
    belongs_to:bang
    belongs_to :user
end