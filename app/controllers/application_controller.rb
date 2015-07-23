class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
def show
  if
    @solid = Solid.find_by_id(params['id'])
    render 'show'
  else 
    render 'sitenl'
  end
end
end
