module ApplicationHelper
  include Pagy::Frontend

  def sortable
    title = "Fecha de publicación_ "
    css_class = "current #{sort_direction}"
    new_direction = sort_direction == "asc" ? "desc" : "asc"
    link_to title, { direction: new_direction }, { class: css_class }
  end

  # Sort direction bootstrap icons
  #   <i class="bi bi-sort-down-alt"></i>
  #   <i class="bi bi-sort-down"></i>
end
