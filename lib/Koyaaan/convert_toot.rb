module MastodonCthulhu
    class Random < MastodonCthulhu::Convert
  
      def convert(input)
        input.replace(@replaces.sample)
      end
    end
  end