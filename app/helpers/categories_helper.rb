module CategoriesHelper

def cat_name
@first_cat = Category.first.name

end

def second_name
Category.find(13).name
end

def third_name
Category.find(14).name
	end

def fourth_name
Category.find(15).name
end

end
