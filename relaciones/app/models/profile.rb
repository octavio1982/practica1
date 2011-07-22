class Profile < ActiveRecord::Base
  has_many :transactions, :dependent => :restrict
#:dependent => :delete_all
  #validates :name, :presence => true
  #validates :email, :presence => true
  validates_presence_of :name, :email, :message => "Este campo es requerido",:presence => true
  validates_uniqueness_of :email
  validates_format_of   :email, :message => "No es valido", :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :if => :email_vacio?

  def email_vacio?
      !email.empty?
  end


end
 