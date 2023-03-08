require_relative './Prestataire'

module Objet
  class Roads
    attr_accessor :idRoad, :nom, :formule

    def getTriedPrestator(connection)
      mine = true
      if(connection == nil)
        c = Utils::Connexion.new()
        connection = c.enterBdd()
        mine = false
      end
      formule = self.getFormule()
      sql = "Select idprestataire, nom, prix, vitesse, employes, anciennete ,("+formule+")/prix as score from v_prestataire order by ("+formule+")/prix"
      puts sql
      result = connection.exec(sql)
      prestataires = []
      result.each do |row|
        pr = Objet::Prestataire.new(row['idprestataire'], row['nom'], row['prix'], row['vitesse'], row['employes'], row['anciennete'])
        pr.setScore(row['score'])
        prestataires.push(pr)
      end
      if(mine == false)
        connection.close
      end
      return prestataires
    end

    def initialize(idRoad, nom, formule)
      setIdRoad(idRoad)
      setNom(nom)
      setFormule(formule)
    end

    def setIdRoad(idRoad)
      @idRoad = idRoad
    end
    def getIdRoad()
      @idRoad
    end
    def setNom(idRoad)
      @nom = idRoad
    end
    def getNom()
      @nom
    end
    def setFormule(idRoad)
      @formule = idRoad
    end
    def getFormule()
      @formule
    end
  end
end
