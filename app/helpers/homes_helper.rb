module HomesHelper
  def first_displayed_category
    link_to(Category.first&.articles&.last&.title, Category.first&.articles&.last,
            class: 'p-ti') unless Category.first&.articles&.last&.title.blank?
  end

  def second_displayed_category
    link_to(Category.second&.articles&.last&.title, Category.second&.articles&.last,
            class: 'p-ti') unless Category.second&.articles&.last&.title.blank?
  end

  def third_dipalyed_category
    link_to(Category.third&.articles&.last&.title, Category.third&.articles&.last,
            class: 'p-ti') unless Category.third&.articles&.last&.title.blank?
  end

  def fourth_displayed_category
    link_to(Category.fourth&.articles&.last&.title, Category.fourth&.articles&.last,
            class: 'p-ti') unless Category.fourth&.articles&.last&.title.blank?
  end

  def first_displayed_image
    image_tag(Category.first&.articles&.last&.image,
              class: 'arti-img') if Category.first&.articles&.last&.image.present?
  end

  def second_displayed_image
    image_tag(Category.second&.articles&.last&.image,
              class: 'arti-img') if Category.second&.articles&.last&.image.present?
  end

  def third_displayed_image
    image_tag(Category.third&.articles&.last&.image,
              class: 'arti-img') if Category.third&.articles&.last&.image.present?
  end

  def fourth_displayed_image
    image_tag(Category.fourth&.articles&.last&.image,
              class: 'arti-img') if Category.fourth&.articles&.last&.image.present?
  end

  def vote(l_popular)
    content_tag(:p, link_to(l_popular.title, l_popular, class: 'pop-title')) +
      image_tag(l_popular.image, class: 'pop-img') if l_popular.image.present?
  end
end
