class Transaction < ActiveRecord::Base
  belongs_to  :profile

  #validates :ammount, :profile_id, :presence => true # aqui no pude personalizar mensaje de error
  validates_presence_of :ammount, :profile_id, :message => "Este campo es requerido",:presence => true
  
  validates_numericality_of :ammount, :message => "Se esperaba un numero", :if => :ammount_vacio?
  validate :valida_opcion_combobox

 #validacion para combobox definida por mi
  def valida_opcion_combobox
       errors.add(:profile_id, "No es una opcion valida") if profile_id == -1
  end

  def ammount_vacio?
    !ammount.nil? || (!ammount.nil? && !ammount.empty?)
  end
end
