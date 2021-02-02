class CuentaBancaria
    attr_accessor :nombre_usuario, :numero_cuenta
    
    def initialize(nombre_usuario,numero_cuenta,vip=0)
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta
        @vip = vip
        if @numero_cuenta.digits.count != 8
            raise ArgumentError,"El numero de cuenta debe tener 8 digitos"
        end
    end

    def numero_de_cuenta()
        puts "1-#{@numero_cuenta}" if @vip == 1
        puts "0-#{@numero_cuenta}" if @vip == 0
    end
end

uno = CuentaBancaria.new('david',12345678,1)
uno.numero_de_cuenta()