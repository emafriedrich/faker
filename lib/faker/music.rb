module Faker
  class Music < Base
    class << self
      def key
        keys.sample + key_variants.sample
      end

      def chord
        key + chord_types.sample
      end

      def instrument
        fetch('music.instruments')
      end

      def keys
        ['C', 'D', 'E', 'F', 'G', 'A', 'B']
      end

      def key_variants
        ['b', '#', '']
      end

      def chord_types
        ['', 'maj', '6', 'maj7', 'm', 'm7', '-7', '7', 'dom7', 'dim', 'dim7', 'm7b5']
      end
    end
  end
end
