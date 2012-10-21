#Requisitos
 #•Cargar la biblioteca 'test/unit'
 #•Hacer que la clase a testear sea una subclase de Test::Unit::TestCase
 #•Escribir los métodos con el prefijo test_
 #•Afirmar (assert) las cosas que decidas que sean ciertas.
 #•Ejecutar los tests y corregir los errores hasta que desaparezcan.

#------------Tests ----------------
require 'rps'
require 'test/unit'

class TestPlay < Test::Unit::TestCase
	
	def test_play
		assert_raise( RuntimeError ) { PiedraPapelTijera.new.play }
	end
	
	def test_wrong_play 
		30.times do
			assert_raise( SemanticError ) { PiedraPapelTijera.new.playConParametro('tijera') }
		end
		
	end
 
	def test_wrong_parameter
		assert_raise( SyntaxError ) { PiedraPapelTijera.new.playConParametro('tierra') }
		assert_raise( SyntaxError ) { PiedraPapelTijera.new.playConParametro('agua') }
		assert_raise( SyntaxError ) { PiedraPapelTijera.new.playConParametro('fuego') }
		assert_raise( SyntaxError ) { PiedraPapelTijera.new.playConParametro(123) }
		
	end
	
	
 
end
