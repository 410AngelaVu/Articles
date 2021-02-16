module CategoriesHelper
  def cat_name
    Category.find(1).name
  end

  def second_name
    Category.find(2).name
  end

  def third_name
    Category.find(3).name
  end

  def fourth_name
    Category.find(4).name
  end
end
