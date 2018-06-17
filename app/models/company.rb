class Company < ApplicationRecord
  include MetaAttributes

  extend ModelCsv

  scope :with_terms, ->(terms) {
    return nil if terms.empty?
    where('name ILIKE :terms OR email ILIKE :terms OR tax_id ILIKE :terms', terms: '%' + terms + '%')
  }

  def self.ransackable_scopes(auth_object = nil)
    [:with_terms]
  end

  def logo

  end

end
