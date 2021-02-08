class CreateKanekalons < ActiveRecord::Migration[6.1]
  def change
    create_table :kanekalons do |t|
      t.string :hex
      t.string :color_name

      t.timestamps
    end
  end
end
