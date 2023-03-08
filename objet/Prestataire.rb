require_relative './utils/Connexion'

module Objet
  class Prestataire
    attr_accessor :idPrestataire, :nom, :vitesse, :prix, :employes, :anciennete

    def getTriedPrestatair(route, connection)
      mine = true
      if(connection == nil)
        connection = utils::Connexion.enterBdd()
        mine = false
      end
      formule = route.getFormule()
      sql = "Select idprestataire ,nom, prix, vitesse, employes, anciennete from prestataire order by ("+formule+")/prix"
      result = connection.exec(sql)
      prestataires = []
      result.each do |row|
        pre = Prestataire.new(row['idprestataire '], row['nom'], row['prix'], row['vitesse'], row['employes'], row['anciennete'])
        prestataire << pre
      end
      if(mine == false)
        connection.close
      end
      return prestataires
    end

    def initialize(idPrestataire, nom, prix, vitesse, employes, anciennete)
      setIdPrestataire(idPrestataire)
      setNom(nom)
      setVitesse(vitesse)
      setPrix(prix)
      setEmploye(employes)
      setAnciennete(anciennete)
    end

    def getRoads(connexion)
      mine = true
      if(connexion == nil)
        connexion = utils::Connexion.enterBdd()
        mine = false
      end

    end
    def setIdPrestataire(idPrestataire)
      @idPrestataire = idPrestataire
    end
    def getIdPrestataire()
      @idPrestataire
    end
    def setNom(nom)
      @nom = nom
    end
    def getNom()
      @nom
    end
    def setVitesse(vitesse)
      @vitesse = vitesse
    end
    def getVitesse()
      @vitesse = vitesse
    end
    def setPrix(prix)
      @prix = prix
    end
    def getPrix()
      @prix
    end
    def setEmploye(employes)
      @employes = employes
    end
    def getEmploye()
      @prix
    end
    def setAnciennete(anciennete)
      @anciennete = anciennete
    end
    def getAnciennete()
      @anciennete
    end
  end
end

