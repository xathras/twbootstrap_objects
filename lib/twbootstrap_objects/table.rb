module TwbootstrapObjects
  class Table

    def initialize( hovered: false, bordered: false, striped: false, condensed: false )
      @hovered   = !!hovered
      @bordered  = !!bordered
      @striped   = !!striped
      @condensed = !!condensed
    end

    %w(hovered bordered striped condensed).each do |method_base|
      define_method "#{method_base}?" do
        instance_variable_get("@#{method_base}")
      end

      define_method "#{method_base}=" do |new_value|
        instance_variable_set("@#{method_base}", !!new_value)
      end
    end
  end
end