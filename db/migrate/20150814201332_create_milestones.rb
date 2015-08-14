class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :summary
      t.text :description
      t.string :title
      t.references :gtm_strategy, index: true

      t.timestamps
    end
  end
end
