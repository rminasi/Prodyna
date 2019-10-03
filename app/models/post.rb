class Post < ApplicationRecord
  searchkick autocomplete: ['title']
end
