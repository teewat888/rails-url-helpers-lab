class AddActiveToStudents < ActiveRecord::Migration[5.0]
    def change
        add_column :students, :active, :boolean, :dafault => false
    end
end