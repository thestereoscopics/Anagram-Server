get '/' do
  erb :index
end

get '/:gazzebo' do
  input = params[:gazzebo]
  @anagrams = Word.all.map(&:word).select do |word| 
    word.downcase.chars.sort.join == input.downcase.chars.sort.join 
  end
  erb :index
end


post "/answer" do
  redirect "/#{params[:user_input]}"
end
