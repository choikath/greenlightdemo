class Patient < ActiveRecord::Base
    belongs_to :service, inverse_of: :patients
    after_create :defaults #this will call the 'defaults' method whenever a new entry is created
    
    def defaults
      self.update_attributes(active?: true) if active? == nil
    end
end
