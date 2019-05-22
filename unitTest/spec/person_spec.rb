class Person
    attr_accessor :name, :list

    def initialize
        self.list = []
    end
    def put(person)
        self.list.push(person)
    end
end 

describe Person do
    it 'add a new person' do
        man = Person.new
        man.name = "Gavin"
        
        man.put(man.name)
        expect(man.list).to eql ['Gavin']

    end
end