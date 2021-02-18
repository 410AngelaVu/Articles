module HomesHelper
  def first_displayed_category
    link_to(Category.find(1).articles.last.title, Category.find(1).articles.last, class: 'p-ti')
  end

  def second_displayed_category
    link_to(Category.find(2).articles.last.title, Category.find(2).articles.last, class: 'p-ti')
  end

  def third_dipalyed_category
    link_to(Category.find(3).articles.last.title, Category.find(3).articles.last, class: 'p-ti')
  end

  def fourth_displayed_category
    link_to(Category.find(4).articles.last.title, Category.find(4).articles.last, class: 'p-ti')
  end

  def first_displayed_image
    return unless Category.find(1).articles.last.image.attached?

    image_tag(Category.find(1).articles.last.image, class: 'arti-img')
  end

  def second_displayed_image
    image_tag(Category.find(2).articles.last.image, class: 'arti-img') if Category.find(2).articles.last.image.attached?
  end

  def third_displayed_image
    image_tag(Category.find(3).articles.last.image, class: 'arti-img') if Category.find(3).articles.last.image.attached?
  end

  def fourth_displayed_image
    image_tag(Category.find(4).articles.last.image, class: 'arti-img') if Category.find(4).articles.last.image.attached?
  end

  def vote(l_popular)
    return unless l_popular.image.attached?

    content_tag(:p, link_to(l_popular.title, l_popular, class: 'pop-title')) +
      image_tag(l_popular.image, class: 'pop-img')
  end
end
