class Avanger
    attr_accessor :list

    def initialize
        self.list = []
    end
    def put(avanger)
        self.list.push(avanger)
    end

end

describe Avanger do 
    hq = Avanger.new

    it 'Should to add one avanger' do  
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

    it 'Should to verify if exist avanger' do
        hq.put('Hulk')
        hq.put('American Captain')
        hq.put('Thor')
        expect(hq.list).to include 'Hulk'
    end

    it 'Should to verify size' do
       result =  hq.list.size == 4
        expect(result).to be true
    end

    it 'Should to verify if Spiderman is the First of list' do
         expect(hq.list).to start_with('Spiderman')
     end

     it 'Should to verify if contains last name' do
        avenger = 'Carol Danvers'
        expect(avenger).to match(/Danvers/)
        expect(avenger).not_to match(/Captain/)
    end


end