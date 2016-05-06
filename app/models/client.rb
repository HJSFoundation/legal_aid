class Client < ActiveRecord::Base
  include FormHelper

  has_many :cases
  validates :last_name, :first_name, presence: true

  def fullname
    name = ("#{self.first_name} #{self.last_name}").strip
    name += " - #{company_name}" unless self.company_name.blank?
    name
  end

  def phones
    phone_numbers = ""
    phone_numbers << "  #{self.home_phone}(h) |" unless self.home_phone.blank?
    phone_numbers << "  #{self.work_phone}(w) |" unless self.work_phone.blank?
    phone_numbers << "  #{self.cell_phone}(c)" unless self.cell_phone.blank?
    phone_numbers.chomp!(" |")
    phone_numbers.strip
  end

  def self.most_valueable_client
    joins(:cases).group(:client_id).sum(:exposure).max_by{|k,v| v}
  end

  def full_name
    self.first_name + " " + self.last_name
  end

  def open_cases
    self.cases.where(open: true)
  end

  def closed_cases
    self.cases.where(open: false)
  end

end
