class Tweet < ApplicationRecord
    belongs_to :user

    def creation_date
        created_at.strftime("%e %B %Y")

    end
end