require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "my secret is that I have a very messy room at the moment!"
end

get '/coffee' do
  "I like my coffee black and strong"
end

get '/run' do
  "I should really go for a run"
end

get '/cat' do
  "<div>
   <style>
   img  {
     border-color: red;
     border-style: dashed
     }
     </style>
     <img src='http://bit.ly/1eze8aE'>
   </div>"

end


# <img src="smiley.gif" alt="Smiley face" border="5">
