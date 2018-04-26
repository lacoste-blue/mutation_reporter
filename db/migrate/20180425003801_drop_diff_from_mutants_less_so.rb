class DropDiffFromMutantsLessSo < ActiveRecord::Migration[5.1]
  def change
    remove_column :mutations_less_sos, :diff
  end
end
