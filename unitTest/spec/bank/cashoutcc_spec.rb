require_relative '../../app/contacorrente'

describe ContaCorrente do 
    describe 'cashOut' do
        context 'cash out in checking account' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.cashOutbank(200.00)
            end
            it 'the new customer balance is R$ 800' do
                expect(@cc.saldo).to eql 800.00
            end
        end
        context 'cash out in checking account but hasnt balance' do
            before(:all) do
                @cc = ContaCorrente.new(0.00)
                @cc.cashOutbank(100.00)
            end
            it 'system must to show the mesage' do
                expect(@cc.mensagem).to eql 'You dont have balance enough'
            end
            it 'the final balance should be R$ 0' do
                expect(@cc.saldo).to eql 0.00
            end
        end
        context 'cash out in checking account but not balace enough' do
            before(:all) do
                @cc = ContaCorrente.new(500.00)
                @cc.cashOutbank(510.00)
            end
            it 'system must to show the mesage' do
                expect(@cc.mensagem).to eql 'You dont have balance enough'
            end
            it 'final balance should be R$ 500' do
                expect(@cc.saldo).to eql 500.00
            end
        end
        context 'limit cash out in checking account' do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.cashOutbank(701.00)
            end
            it 'system must to show the mesage' do
                expect(@cc.mensagem).to eql 'Sorry, max limite to cash out is R$ 700'
            end
            it 'final balance should be R$ 500' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end
end