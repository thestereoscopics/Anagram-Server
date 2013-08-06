get '/' do
  @anagrams = []
  erb :index
end


get "/answer" do
  input = params[:user_input]
  @anagrams = Word.all.map(&:word).select do |word| 
    word.downcase.chars.sort.join == input.downcase.chars.sort.join 
  end
  erb :index
end




