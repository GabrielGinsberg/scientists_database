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
  
  def create
    s = Solid.new
    s.scientist_name = params['scientist_name']
    s.picture = params['picture']
    s.date = params['date']
    s. bio = params['bio']
    s.location = params['location']
    s.percent = params['percent']
    s.save
    redirect_to "/pro/#{ s.id }"
  end
  
  def edit
    @solid = Solid.find_by_id(params['id'])
  end
  
  def update
    s = Solid.find_by_id(params['id'])
    s.scientist_name = params['scientist_name']
    s.picture = params['picture']
    s.date = params['date']
    s. bio = params['bio']
    s.location = params['location']
    s.percent = params['percent']
    s.save
    redirect_to "/pro/#{ s.id }"
  end
end
