class AdminPagesController < ApplicationController

  layout 'admin'

  def static
    @products = Product.all.page params[:page] if params[:page] == 'everyday_dynamic'
    render params[:page].underscore.to_s
  end

  def static_with_role
    template_path = "admin_pages/#{params[:role]}/#{params[:page].underscore.to_s}" 
    if template_exists?(template_path)
      render template_path
    else
      redirect_to(admin_path(page: params[:page]))
    end
  end
end
