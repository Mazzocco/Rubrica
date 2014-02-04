load "address_book.rb"
load "person.rb"

####Creo una nuova rubrica vuota

ab = AddressBook.new

##CArico un file nella rubrica

ab.read_file("address.txt")

puts "DEBUG"
puts ab.inspect

##Stampo il contenuto della rubrica

ab.people.each do |p|
	puts "Persona: #{p.name} #{p.phone}"
end

ab.write_array("address2.txt")

ab.search('Virginia')

ab.print()