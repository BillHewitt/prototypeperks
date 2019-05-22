module ApplicationHelper

  def admin_active_class(page)
    current_page?(admin_path(page: page)) ? 'active' : ''
  end

  def current_pages?(pagesArray)
	# pagesArray exaple ['everyday', 'learning']
	pagesArray.any?{|page|
	current_page?(admin_path(page: page))
	}
	end

  def current_pages?(pagesArray)
    # pagesArray exaple ['everyday', 'learning']
    pagesArray.any?{|page|
      current_page?(admin_path(page: page))
    }
  end

  def role?(name)     
    name.to_s == params[:role] if params[:role].present?
  end
end
