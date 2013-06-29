##
# Filter
class FilterStringOrdinalInput < ActiveAdmin::Inputs::FilterStringInput

  filter :equals, :string_greater_than, :string_lower_than

  def metasearch_conditions
		/string_greater_than|equals|string_lower_than/
	end
end
