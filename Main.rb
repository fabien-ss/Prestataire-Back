require_relative './objet/Prestataire'
require_relative './objet/Roads'

julien = Objet::Prestataire.new('Jean', 'kh', 'ew', 'eqw', 'ewq', 'ew')
route = Objet::Roads.new('sa','sa','sasd')

puts route.getIdRoad
