module HomesHelper

def first_displayed_category
Category.find(12).articles.last.title
end

def second_displayed_category
Category.find(13).articles.last.title
end

def third_dipalyed_category
Category.find(14).articles.last.title
end

def fourth_displayed_category
Category.find(14).articles.last.title
end

end
