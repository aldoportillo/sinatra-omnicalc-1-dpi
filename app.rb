require "sinatra"
require "sinatra/reloader"

get("/") {
  erb(:square_form)
}

get("/square/new"){
  erb(:square_form)
}

get("/square/results"){

  @number = params.fetch("number")

  @square = @number.to_f ** 2
  erb(:square_results)
}

get("/square_root/new"){
  erb(:square_root_form)
}

get("/square_root/results"){
  @user_number = params.fetch("user_number")

  @result = @user_number.to_f ** 0.5
  erb(:square_root_results)
}
