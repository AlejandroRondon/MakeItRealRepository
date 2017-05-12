#Hashes
#=================================================================================
=begin
[1,2,3,4,5]
:name
person = {
	#'name' => 'simon'
	:name => 'simon',
	1 => 'hola',
	[1,2,3,4,5] => 'equipo,' # :name , 1, [1,2,3,4,5] are the keys
}
=end
#=================================================================================
=begin
#Crear hash
student1 = {
	:name => 'david1',
	:lastname => 'Rondon1',
	:address => 'Cll1'
}

student2 = {
	:name => 'david2',
	:lastname => 'Rondon2',
	:address => 'Cll2'
}

student3 = {
	:name => 'david3',
	:lastname => 'Rondon3',
	:address => 'Cll3'
}
#Create vector with hash
myClass = [{:name => 'david0',	:lastname => 'Rondon0',	:address => 'Cll0'},student1,student2,student3]
#adding elements
myClass.push ({:name => 'david4',	:lastname => 'Rondon4',	:address => 'Cll4'})
myClass.insert(4,{:name => 'david5',	:lastname => 'Rondon5',	:address => 'Cll5'})
	2.times do |index|
	puts "Registering student #{index}"
	puts "Enter the name"
	nameReceived = gets.chomp
	puts "Enter the LastName"
	lastnameReceived = gets.chomp
	puts "Enter the address"
	addressReceived = gets.chomp
	myClass.push ({:name => nameReceived,	:lastname => lastnameReceived,	:address => addressReceived})
end

puts '______________Method 1__________________________'

(myClass.length).times do |index|
	puts "Name #{myClass[index][:name]}"
end
puts '______________Method 2__________________________'
myClass.each do |student|				#this return each object in student
	puts "Name #{student[:name]}"
end
puts '______________Method 3__________________________'
myClass.each do |student,key|				#this return each object in student
	puts "Key#{key} Name #{student[:name]}"
end
#Adding attribute to hash
puts '______________Adding Attribute__________________'
student1[:email] = "david@rondon.com"
puts student1
#Show keys
puts '______________Attributes__________________'
puts student1.keys
puts '________________Values____________________'
puts student1.values
=end
#=================================================================================
#JOIN HASHES 
=begin
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New york' => 'NY',
	'Michigan' => 'MI'
}

cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}
puts '______________Method 1__________________________'
states.each do |state,abrv|
	puts "#{state}  #{cities.fetch abrv, "No found"}"
end
puts '______________Method 2__________________________'
states.values.each do |abrv|
	#puts cities[abrv]
	puts cities.fetch abrv, "No found"  
end
puts '______________Method 3__________________________'
states.each do |state,abrv|
	isnull =  cities[abrv]
	puts "Not found" if isnull == nil
	puts  isnull if isnull !=nil 
end
=end
#================================================================================= # "=" * 40
#array to hash #TERMINAR
=begin
libretaHash = {}
libreta = [["name1","lastname1","email@1"],["name2","lastname2","email@2"],["name3","lastname3","email@3"]]
libreta.each do |contacto|
	libretaHash[]
end
=end
#STRINGS
# emojis
# "u\{1f4a9}"
# split ('') return one array
#mystring = "hola soy un string"
#puts mystring.split(' ').join('-----------')
#str1 = << AQUI
#CSV TO ARRAY
CSV = <<-BEGIN
name,apellido,edad,cc
simon,escobar,25,12345
santiago,escobar,22,123
maria,rondon,23,1444545
BEGIN
myarray1 = []
puts '______________Method 1__________________________'
myStringComplete = ""
csvString = CSV.split("\n")
csvString.each do |row|
	row.split(",").each do |element|
		myarray.push(element)
	end
end
puts myarray1
puts '______________Method 2__________________________'
myarray2 = []
CSV.split("\n").each do |row|
	myarray.concat row.split(",")
end
puts myarray2