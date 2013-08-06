get '/' do
  @anagrams = params[:anagrams]
  # Look in app/views/index.erb
  erb :index
end

post '/anagrams' do
  input = params[:user_input]
  anagrams = Word.all.map(&:word).select do |word| 
    word.downcase.chars.sort.join == input.downcase.chars.sort.join 
  end
  redirect("/?anagrams=#{anagrams.join(", ")}") 
end




