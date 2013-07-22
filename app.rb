## You'll need to require coffee-script in your app
require 'sinatra'
require 'coffee-script'

get '/:name?' do |name|
  name ||= 'Pancho'
  x = coffee :application
  <<-"ZUM"
    <script>
      #{x}
      window.hi("#{name}")
    </script>
    <h1>Hello #{name}</h1>
  ZUM
end
