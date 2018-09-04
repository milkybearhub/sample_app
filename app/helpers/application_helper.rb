module ApplicationHelper
  
  # ページごとの完全なタイトルを返す
  def full_title(page_titile = "")
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_titile.empty?
      base_title
    else
      page_titile + " | " + base_title
    end
  end
end
