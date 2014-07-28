module ApplicationHelper

  # Returns the full title on a per-page basis.
  def title
    base_title = "Bejben"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  # Image logo 
  def logo
    image_tag("rails.png", :alt => "Sample App", :class => "round")
  end
end
