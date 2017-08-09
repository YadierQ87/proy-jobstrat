module CategoriesHelper

  def categories_id_for_select
    Category.pluck(:category, :id)
  end

end
