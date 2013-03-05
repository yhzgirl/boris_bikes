require './control'
require './bike'
require './person'
require './station'
require './van'

control = Control.new
control.run 
puts control.create_report 