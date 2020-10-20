User.destroy_all
u1 = User.create :email => 'giti1365@yahoo.com' , :password => '123'
u2 = User.create :email => 'giti.mafakheri@yahoo.com', :password => '123'
u3 = User.create :email => 'giti13651@yahoo.com', :password => '123'
u4 = User.create :email => 'giti.mafakheri1@yahoo.com', :password => '123'
puts "#{ User.count } users."


Genre.destroy_all
g1 = Genre.create :name => 'Genre1'
g2 = Genre.create :name => 'Genre2'
g3 = Genre.create :name => 'Genre3'
g4 = Genre.create :name => 'Genre4'
g5 = Genre.create :name => 'Genre5'
g6 = Genre.create :name => 'Genre6'
puts "#{ Genre.count } genres."




Book.destroy_all
b1 = Book.create :title => 'Book1'
b2 = Book.create :title => 'Book2'
b3 = Book.create :title => 'Book3'
b4 = Book.create :title => 'Book4'
puts "#{ Book.count } Books."



Author.destroy_all
a1 = Author.create :name => 'Author1'
a2 = Author.create :name => 'Author2'
a3 = Author.create :name => 'Author3'
a4 = Author.create :name => 'Author4'
puts "#{ Author.count } authors."



Shelf.destroy_all
sh1 = Shelf.create :review => 'Shelf1'
sh2 = Shelf.create :review => 'Shelf2'
sh3 = Shelf.create :review => 'Shelf3'
sh4 = Shelf.create :review => 'Shelf4'
puts "#{ Shelf.count } reviews."

ReadingStatus.destroy_all
r1 = ReadingStatus.create :state => 'Read'
r2 = ReadingStatus.create :state => 'Currently Reading'
r3 = ReadingStatus.create :state => 'Want To Read'
puts "#{ ReadingStatus.count } ReadingStatus."

# Associations
puts "Authors and Books."
a1.books << b1
a2.books << b2
a3.books << b3
a4.books << b4



puts "Genres and Books."
b1.genres << g1 << g2
b2.genres << g5 << g6
b3.genres << g3 << g4
b4.genres << g6 << g2
#g6.books << s4  equivalent to: s4.genres << g6

puts "Shelves and books."
sh1.books << b1 << b2 << b3 << b4
sh2.books << b2 << b2 << b2
sh3.books << b2 << b4 << b4
sh4.books << b4 << b3 << b2

puts "Shelves and users"
u2.shelves << sh2
u3.shelves << sh3
u4.shelves << sh4
