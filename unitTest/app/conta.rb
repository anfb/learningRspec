class Conta
    attr_accessor :saldo, :mensagem
    def initialize(saldo)
        self.saldo = saldo
    end

    def cashOutbank(valor, max)
        if (valor > self.saldo)
            self.mensagem = 'You dont have balance enough'
        elsif (valor > max)
            self.mensagem = 'Sorry, max limite to cash out is R$ ' + max.to_s
        else
            self.saldo -= valor
        end
    end
end
