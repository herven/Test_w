# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def display_item(item)
    str = link_to item.name, item
    unless item.children.empty?
      item.children.each{|child| str += "<ul>#{display_item(child)}</ul>"}
    end
    str
  end

end
