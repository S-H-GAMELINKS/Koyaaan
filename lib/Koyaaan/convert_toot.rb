module Koyaaan
    class Random < Koyaaan::Convert
  
      def convert(input)
        input.replace(@replaces.replace)
      end
    end
  end