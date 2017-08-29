class MigratePostgresql < ActiveRecord::Migration[5.0]
    def change

      create_table :articles do |t|
        t.string :title
        t.text :text

        t.timestamps
      end
      add_attachment :articles, :image

      create_table :categories do |t|
        t.string :category
        t.string :description

        t.timestamps
      end
      add_attachment :categories, :image

      create_table :m_countries do |t|
        t.string :ncountry

        t.timestamps
      end

      create_table :companies do |t|
        t.string :company
        t.string :fullname
        t.string :picture
        t.text :description
        t.string :country
        t.string :contact
        t.string :email
        t.string :username
        t.string :password
        t.timestamps
      end
      add_attachment :companies, :image

      create_table :jobs do |t|
        t.string :title
        t.references :m_country, foreign_key: true
        t.references :company, foreign_key: true
        t.timestamps :publish_date
        t.boolean :active
        t.text :description
        t.string :state
        t.string :job_stat
        t.references :category, foreign_key: true
        t.timestamps
      end
      add_attachment :jobs, :image

      create_table :employees do |t|
        t.string :fullname
        t.string :picture
        t.text :description
        t.string :contact
        t.string :email
        t.string :sex
        t.timestamps :birth
        t.text :curriculum
        t.string :username
        t.string :password
        t.references :m_country, foreign_key: true
        t.timestamps
      end
      add_attachment :employees, :image

      create_table :messageemployees do |t|
        t.references :employee, foreign_key: true
        t.references :company, foreign_key: true
        t.text :mail

        t.timestamps
      end


      create_table :aplicationjobs do |t|
        t.references :job, foreign_key: true
        t.references :employee, foreign_key: true
        t.text :description
        t.timestamps
      end


    end
end


