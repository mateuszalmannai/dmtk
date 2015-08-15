module ToolsHelper
  def format_price(tool)
    if tool.free?
      content_tag(:strong, "Free")
    else
      number_to_currency(tool.price)
    end
  end
  def image_for(tool)
    if tool.image_file_name.blank?
      image_tag 'placeholder.png'
    else
      image_tag tool.image_file_name
    end
  end
end
