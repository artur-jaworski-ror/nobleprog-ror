class Post < ApplicationRecord
    belongs_to :user
    def content_snapshot
        content.split('.').first.strip
    end

    def content_keywords(count)
        content.split('.').map {|x| x.split(' ')}.flatten.sample(count)
    end
end
