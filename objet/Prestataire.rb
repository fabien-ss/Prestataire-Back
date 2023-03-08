require_relative '../utils/Connexion'

module Objet
  class Prestataire
    attr_accessor :idPrestataire, :nom, :vitesse, :prix, :employes, :anciennete, :score


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

    def setScore(idPrestataire)
      @score = idPrestataire
    end
    def getScore()
      @score
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

