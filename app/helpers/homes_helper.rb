module HomesHelper
  def first_displayed_category
    link_to(Category.find(12).articles.last.title, Category.find(12).articles.last, class: 'p-ti')
  end

  def second_displayed_category
    link_to(Category.find(13).articles.last.title, Category.find(13).articles.last, class: 'p-ti')
  end

  def third_dipalyed_category
    link_to(Category.find(14).articles.last.title, Category.find(14).articles.last, class: 'p-ti')
  end

  def fourth_displayed_category
    link_to(Category.find(15).articles.last.title, Category.find(15).articles.last, class: 'p-ti')
  end

  def first_displayed_image
    image_tag(Category.find(12).articles.last.image, class: 'arti-img')
  end

  def second_displayed_image
    image_tag(Category.find(13).articles.last.image, class: 'arti-img')
  end

  def third_displayed_image
    image_tag(Category.find(14).articles.last.image, class: 'arti-img')
  end

  def fourth_displayed_image
    image_tag(Category.find(15).articles.last.image, class: 'arti-img')
  end

  def vote(l_popular)
    content_tag(:p, link_to(l_popular.title, l_popular, class: 'pop-title')) +
      image_tag(l_popular.image, class: 'pop-img')
  end
end
