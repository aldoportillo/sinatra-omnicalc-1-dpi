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

  @square = @number.to_f * @number.to_f
  erb(:square_results)
}
