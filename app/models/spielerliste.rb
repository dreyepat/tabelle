class Spielerliste < ActiveRecord::Base
  attr_accessible :geburtsdatum, :name, :nr, :position, :vorname
end
