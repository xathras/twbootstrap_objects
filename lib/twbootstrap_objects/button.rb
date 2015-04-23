module TwbootstrapObjects
  class Button
    TYPES = %w(default primary success info warning danger link).freeze
    SIZES = ['lg', 'sm', 'xs', '']
    attr_reader :type, :size
    def initialize(type: 'default', size: '', 
                   block: false, active: false, enabled: true)
      if !TYPES.include?(type.to_s)
        raise ArgumentError, "Unknown Button Type #{type}. Allowed types: #{TYPES.join(', ')}"
      end
      if !SIZES.include?(size.to_s)
        raise ArgumentError, "Unknown Button Size #{type}. Allowed sizes: #{SIZES.join(', ')}"
      end
      @type, @size, @block = type, size, block
      @active, @block, @enabled = !!active, !!block, !!enabled
    end

    %i[block active enabled].each do |attr_name|
      define_method "#{attr_name}?" do
        instance_variable_get("@#{attr_name}")
      end

      define_method "#{attr_name}=" do |new_value|
        instance_variable_set("@#{attr_name}", !!new_value)
      end
    end
  end
end