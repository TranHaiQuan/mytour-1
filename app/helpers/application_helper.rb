module ApplicationHelper
  def full_title page_title = ""
    base_title = t "application_helper.base_title"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end
end
