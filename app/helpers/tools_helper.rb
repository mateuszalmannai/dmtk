module ToolsHelper
  def format_price(tool)
    if tool.free?
      content_tag(:strong, "Free")
    else
      number_to_currency(tool.price)
    end
  end
end
