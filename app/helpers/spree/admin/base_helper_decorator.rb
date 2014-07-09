Spree::BaseHelper.class_eval do

  def preference_field_tag(name, value, options)
	case options[:type]
    when :integer
      if name.split('[').last.split(']').first == 'preferred_taxon'
      	data = { taxon_select: '1' }
      	options[:data] = data
  	  end

      text_field_tag(name, value, preference_field_options(options))
    when :boolean
      hidden_field_tag(name, 0, id: "#{name}_hidden") +
      check_box_tag(name, 1, value, preference_field_options(options))
    when :string
      text_field_tag(name, value, preference_field_options(options))
    when :password
      password_field_tag(name, value, preference_field_options(options))
    when :text
      text_area_tag(name, value, preference_field_options(options))
    else
      text_field_tag(name, value, preference_field_options(options))
    end
  end

  def preference_field_options(options)
    field_options = case options[:type]
    when :integer
      { :size => 10,
        :class => 'input_integer' }
    when :boolean
      {}
    when :string
      { :size => 10,
        :class => 'input_string fullwidth' }
    when :password
      { :size => 10,
        :class => 'password_string fullwidth' }
    when :text
      { :rows => 15,
        :cols => 85,
        :class => 'fullwidth' }
    else
      { :size => 10,
        :class => 'input_string fullwidth' }
    end

    field_options.merge!({
      :readonly => options[:readonly],
      :disabled => options[:disabled],
      :size => options[:size],
      :data => options[:data]
    })

  end

end