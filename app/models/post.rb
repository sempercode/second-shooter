class Post < ActiveRecord::Base
has_many :comments

self.per_page = 3

validates :title, presence: true
validates :content, presence: true

end
