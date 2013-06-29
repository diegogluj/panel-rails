MetaSearch::Where.add :string_greater_than,
  :predicate => :gt,
  :types => [:string],
  :formatter => Proc.new {|param| param},
  :validator => Proc.new {|param|
    param.is_a?(String)
	}

MetaSearch::Where.add :string_lower_than,
  :predicate => :lt,
  :types => [:string],
  :formatter => Proc.new {|param| param},
  :validator => Proc.new {|param|
    param.is_a?(String)
	}