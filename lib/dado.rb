
class Dado
	def initialize 
		@valor = 0
	end

	def valor
		@valor
	end

	def ponerValor numeroFijo
		@valor = numeroFijo
	end

	def lanzarDado
		if @valor == 0
			numero = rand(6)+1
		else
			numero = @valor
			@valor = 0
		end
		return numero	
	end
end
