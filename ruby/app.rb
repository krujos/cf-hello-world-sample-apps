require 'sinatra'

def foo()
  begin
    raise Exception 'i am logging an exception'
  rescue
    puts $!, $@
  end	
  raise ArgumentError, 'Jacked' 
end 

get '/' do 
  "Hello from ruby!"
end

get '/log' do
  begin
    raise 'i am logging an exception'
  rescue
    puts $!, $@
  end	
end

get '/throw' do
  raise ArgumentError, 'Jacked' 
end

get '/foo' do
  foo()
end