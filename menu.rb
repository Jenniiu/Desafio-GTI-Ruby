require_relative 'operations'

module Calculator
  class Menu
    def initialize
      result = ''
      loop do
        puts result 
        puts 'Bem vindo a calculadora'
        puts '1. Operação 1'
        puts '2. Operação 2'
        puts '3. Sair'
        print 'Sua opção: '
        
        option = gets.chomp.to_i
        
        if option == 1
            require './operations.rb'
            operations = Operations.new
            operations.biased_mean(grades, blacklist)
            biased_mean(grades, blacklist)
            
        elsif option == 2
          
        elsif option == 3 
          break if option == 3
        else
          result = 'Opção inválida'
        end
        system "clear"
      end
    end
  end
end
