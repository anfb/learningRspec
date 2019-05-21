describe 'suit rspec' do 
    it 'sum of values' do
        sum = 10 + 5
        expect(sum).to eql 15
    end
    it 'soma de valores string' do
        soma = 10 + 5
        expect(soma.to_s).to eql '15'
    end
end