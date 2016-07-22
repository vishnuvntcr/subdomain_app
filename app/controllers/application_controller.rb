class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_blog

	private
	  def get_blog
	  	@blog = Blog.first
	  	session[:subdomain] = "blabla"
	  	redirect_to root_url(subdomain: session[:subdomain]) if request.subdomain == 'www'
	    # blogs = Blog.where(subdomain: request.subdomain)

	    # if blogs.count > 0
	    #   @blog = blogs.first
	    # elsif request.subdomain != 'www'
	    # 	redirect_to root_url(subdomain: 'www')
	  end
end
