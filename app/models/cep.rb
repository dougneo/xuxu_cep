class Cep < ApplicationRecord
  # Insert all using a file csv with all ceps
  def self.insert_all
    file = File.open('db/ceps.csv', 'r')
    file.each_line do |line|
      cep = line.split(';')
      Cep.create(cep: cep[0], bairro: cep[1], localidade: cep[2], logradouro: delete_accent(cep[3]).downcase, uf: cep[4], logradouro_original: cep[3])
    end
    file.close
  end

  # Search by cep
  def self.search(cep)
    Cep.find_by(cep: cep)
  end

  # Search by logradouro
  def self.search_by_logradouro(logradouro)
    Cep.where('logradouro LIKE ?', "%#{logradouro}%")
  end

  # Search by bairro
  def self.search_by_bairro(bairro)
    Cep.where('bairro LIKE ?', "%#{bairro}%")
  end

  # Search by cidade
  def self.search_by_cidade(cidade)
    Cep.where('cidade LIKE ?', "%#{cidade}%")
  end
  
  # Cleaner accents of logradouro
  def self.delete_accent(line)
    line.gsub(/[áàãâä]/, 'a')
        .gsub(/[éèêë]/, 'e')
        .gsub(/[íìîï]/, 'i')
        .gsub(/[óòõôö]/, 'o')
        .gsub(/[úùûü]/, 'u')
        .gsub(/[ç]/, 'c')
        .gsub(/[ñ]/, 'n')
  end
end
