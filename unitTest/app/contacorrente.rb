class ContaCorrente
    attr_accessor :saldo, :mensagem
    def initialize(saldo)
        self.saldo = saldo
    end

    def saca(valor)
        if (valor > self.saldo)
            self.mensagem = 'You dont have balance enough'
        elsif (valor > 700.00)
            self.mensagem = 'Sorry, max limite to cash out is R$700'
        else
            self.saldo -= valor
        end
    end
end