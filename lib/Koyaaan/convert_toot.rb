module Koyaaan
    class Random < Koyaaan::Convert
  
      def convert(input)
        input.replace(@replaces.sample)
      end
    end
  end