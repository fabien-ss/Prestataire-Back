module Objet
  class Roads
    attr_accessor :idRoad, :nom, :formule

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
