require 'sinatra'
require_relative "./lib/dado.rb"

get '/' do
    @@dado1 = Dado.new
    @@dado2 = Dado.new
	erb :inicio
end

post '/dado' do
	@valorDado1 = @@dado1.lanzarDado
	@valorDado2 = @@dado2.lanzarDado

	if @valorDado1 > @valorDado2
		@resultado = "Gano Dado1"
	elsif @valorDado1 < @valorDado2
		@resultado = "Gano Dado2"
	elsif @valorDado1 == @valorDado2
		@resultado = "Empate"
	end
	
	erb :inicio 
end
