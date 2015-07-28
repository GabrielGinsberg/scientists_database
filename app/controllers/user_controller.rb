class UserController < ApplicationController
  def show
  if
    @solid = Solid.find_by(id: params['id'])
    render 'show'
  else 
    render 'sitenl'
  end
end

  def new
  end
  
  def create
    @solid = Solid.new
    @solid.scientist_name = params['scientist_name']
    @solid.picture = params['picture']
    @solid.date = params['date']
    @solid. bio = params['bio']
    @solid.location = params['location']
    @solid.percent = params['percent']
    if @solid.save
      redirect_to "/pro/#{ @solid.id }"
    else 
      render 'new'
    end
  end
  
  def edit
    @solid = Solid.find_by(id: params['id'])
  end
  
  def update
    @solid = Solid.find_by(id: params['id'])
    @solid.scientist_name = params['scientist_name']
    @solid.picture = params['picture']
    @solid.date = params['date']
    @solid. bio = params['bio']
    @solid.location = params['location']
    @solid.percent = params['percent']
    if @solid.save
    redirect_to "/pro/#{ @solid.id }"
    else
      render 'edit'
    end
  end
  
  def destroy
    @solid = Solid.find_by(id: params['id'])
    @solid.destroy
    redirect_to "/pro"
  end
  
  def index 
    @solids = Solid.all
  end
end