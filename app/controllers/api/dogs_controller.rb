class Api::DogsController < ApplicationController
  def create
    p "current_user"
    p current_user
    p "current_user"
    if current_user
      @dog = Dog.new(name: "Rex", breed: "puppy", age: 3)
      @dog.save
      render 'show.json.jb'
    else
      render json: {message: "you can't do that buddy"}
    end
  end
end
