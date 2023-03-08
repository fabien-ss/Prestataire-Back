require_relative './objet/Prestataire'
require_relative './objet/Roads'
require_relative './utils/Connexion'

# c = Utils::Connexion.new()
# connex = c.enterBdd()
# puts connex
julien = Objet::Prestataire.new(1, 'Jean', 2131, 21, 2312, 2000)
route = Objet::Roads.new(1, 'RN 7', '0*vitesse+2*employes-1*anciennete')

table = route.getTriedPrestator(nil)

for t in table
  puts t.getAnciennete, t.getScore
end
