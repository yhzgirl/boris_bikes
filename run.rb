require './control'
require './bike'
require './person'
require './station'

control = Control.new
control.run 
puts control.create_report