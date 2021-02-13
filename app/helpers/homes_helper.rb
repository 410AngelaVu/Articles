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

def first_displayed_image
image_tag(Category.find(12).articles.last.image, class:'arti-img')
end

def second_displayed_image
image_tag(Category.find(13).articles.last.image, class:'arti-img')
end

def third_displayed_image
image_tag(Category.find(14).articles.last.image, class:'arti-img')
end

def fourth_displayed_image
image_tag(Category.find(15).articles.last.image, class:'arti-img')
end

end
