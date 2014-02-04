class AddressBook

    #definisco l'array people
    attr_accessor :people

	
	def initialize
    	self.people = []		
	end

    
	def read_file(file_name)
		#apro il file
		f = File.new(file_name, "r")
		
		#leggo il contenuto
		file_content = f.read

		#trasformo in array
		rows = file_content.split("\n")

		#ogni riga sarà un elemento dell'array
		rows.collect do |row|	
			nome = row.split(",").first
			telefono = row.split(",").last
			p = Person.new(nome, telefono)
			people << p
		end
	end

	def write_array(file_name)

		f = File.new(file_name, "w")

		rows = people.collect do |person|
		  "#{person.name},#{person.phone}"
		end

		f.write(rows.join("\n"))
		
	end

	#ritorna un array di risultati trovati
	def search(name)
		result = []
		people.each do |person|
		  	if person.name.include?(name)
		      	puts "tel: #{person.phone}"
		      	result << person
			end
		end
		result
	end

	def print()
		aux = people.collect do |person|
		  "nome: #{person.name}, telefono: #{person.phone}"
		end.join("\n")
		puts aux
	end

end