module Koyaaan
    class Random < Koyaaan::Convert
  
      def convert(input)
        "#{@replaces.sample}\n #社会性フィルター"
      end
    end
  end