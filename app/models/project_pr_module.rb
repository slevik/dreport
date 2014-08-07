class ProjectPrModule < ActiveRecord::Base
  serialize :modules, Hash
end
