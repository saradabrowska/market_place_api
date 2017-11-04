class ApiConstraints
  attr_accessor(:version, :default)

	def initialize(options)
    self.version = options[:version]
    self.default = options[:default]
  end

  def matches?(request)
    default || request.headers['Accept'].include?("application/vnd.marketplace.v#{version}")
  end
end