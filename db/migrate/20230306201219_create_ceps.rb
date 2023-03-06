class CreateCeps < ActiveRecord::Migration[7.0]
  def change
    create_table :ceps do |t|
      t.string :cep
      t.string :logradouro_original
      t.string :logradouro
      t.string :bairro
      t.string :localidade
      t.string :uf

      t.timestamps
    end
  end
end
