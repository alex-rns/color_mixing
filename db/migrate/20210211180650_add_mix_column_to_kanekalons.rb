class AddMixColumnToKanekalons < ActiveRecord::Migration[6.1]
  def change
    add_column :kanekalons, :default_mix, :string
    add_column :kanekalons, :kami, :string
    add_column :kanekalons, :jumbo_braids, :string
    add_column :kanekalons, :aida, :string
  end
end
