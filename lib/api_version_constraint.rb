class ApiVersionConstraint
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end

  def matches?(req)
    @default || req.headers['Accepts'].include?("application/vnd.taskmanager.v#{@version}")
  end
end
