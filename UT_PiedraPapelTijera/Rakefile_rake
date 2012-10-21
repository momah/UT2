require 'rake'
require 'rake/testtask'
 
task :default => [:test_units]
 
desc "Ejecutando los tests"
Rake::TestTask.new("test_units") { |test|
  test.pattern = 'test/*_test.rb'  # busca los ficheros acabados en '_test.rb'
  test.verbose = true
  test.warning = true
}

