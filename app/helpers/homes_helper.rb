module HomesHelper
  def first_displayed_category
    link_to(Category.first&.articles&.last&.title, Category.first&.articles&.last,
            class: 'p-ti')
  end

  def second_displayed_category
    link_to(Category.second&.articles&.last&.title, Category.second&.articles&.last,
            class: 'p-ti')
  end

  def third_dipalyed_category
    link_to(Category.third&.articles&.last&.title, Category.third&.articles&.last,
            class: 'p-ti')
  end

  def fourth_displayed_category
    link_to(Category.fourth&.articles&.last&.title, Category.fourth&.articles&.last,
            class: 'p-ti')
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def first_displayed_image
    return if Category.first&.articles&.last&.image.blank?

    image_tag(Category.first&.articles&.last&.image,
              class: 'arti-img')
  end

  def second_displayed_image
    return if Category.second&.articles&.last&.image.blank?

    image_tag(Category.second&.articles&.last&.image,
              class: 'arti-img')
  end

  def third_displayed_image
    return if Category.third&.articles&.last&.image.blank?

    image_tag(Category.third&.articles&.last&.image,
              class: 'arti-img')
  end

  def fourth_displayed_image
    return if Category.fourth&.articles&.last&.image.blank?

    image_tag(Category.fourth&.articles&.last&.image,
              class: 'arti-img')
  end

  def vote(l_popular)
    content_tag(:p, link_to(l_popular.title, l_popular, class: 'pop-title')) +
      image_tag(l_popular.image, class: 'pop-img')
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
