module Tabkeeper
  class Navigation
		include Virtus

	  attribute :keys, Set[Symbol]

		def initialize(*args)
			self.keys = args.to_set
		end

		def <<(arg)
			add(arg)
		end
		
		def add(*args)
			args.each do |arg|
				@keys.add(arg)
			end
		end

		def contains?(sym)
			keys.include?(sym.to_sym)
		end

		def check_state(sym)
			contains?(sym) ? "active" : ""
		end

		alias_method :active?, :contains?
	end
end