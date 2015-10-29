class Service < ActiveRecord::Base
    has_many :patients, inverse_of: :service
end
