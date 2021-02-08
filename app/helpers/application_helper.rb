module ApplicationHelper

def categories
  Category.all.map { |c| [ c.name, c.id ] }
end
end
