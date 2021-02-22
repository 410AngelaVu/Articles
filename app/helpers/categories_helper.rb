module CategoriesHelper
  def cat_name
    Category.first.name
  end

  def second_name
    Category.second.name
  end

  def third_name
    Category.third.name
  end

  def fourth_name
    Category.fourth.name
  end

  def categories_articles_one(category)
    counter = 0
    category.articles.collect.with_index do |f, index|
      counter += 1
      concat render partial: 'categories/art',
                    locals: { index: index, f: f, image_first: (counter == 3) || (counter == 4) ? true : false }
      counter = counter == 4 ? 0 : counter
    end
  end
end
