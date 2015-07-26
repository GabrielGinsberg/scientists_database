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
  
  def new
  end
  
  def form
    s = Solid.new
    s.picture = params['picture']
    s.scientist_name = params['name']
    s.date = params['date']
    s.bio = params['bio']
    s.location = ['location']
    s.percent = ['percent']
    s.save
    redirect_to "/pro/#{s.id}"
  end
  
  def create
    s = Solid.new
    s.picture = params['picture']
    s.scientist_name = params['name']
    s.date = params['date']
    s.bio = params['bio']
    s.location = ['location']
    s.percent = ['percent']
    s.save
    render 'show'
  end
end
