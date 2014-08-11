class ProjectPrModule < ActiveRecord::Base
  serialize :modules, Hash

  def self.search(search)
  	if search
  	  where( :project_id => search )
  	else
  	  scoped
  	end
  end
end
