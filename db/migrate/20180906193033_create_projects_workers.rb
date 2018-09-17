class CreateProjectsWorkers < ActiveRecord::Migration[5.2]
  def change
    
      create_table :projects_workers, id: false do |t|
        t.references :projects, index: true
        t.references :workes, index: true  
      end
  end
end
