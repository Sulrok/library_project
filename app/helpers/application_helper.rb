module ApplicationHelper

  def full_title(page_title = '')
    base_title = "WebLibrary"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  def get_book_stat(n)
    case n
      when 0
          "Available"
      when 1
          "On loan"
      when -1
          "UnAvailable"
    end
end
end