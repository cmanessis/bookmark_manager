env = ENV["RACK_ENV"] || "development"

# we're telling datamapper to use a postgres database on localhost.
# The name will be "bookmark_manager_test" or "bookmark_manager_development"
# depending on the environment
# DataMapper::Logger.new(STDOUT, :debug)
DataMapper.setup(:default, ENV['yljqbwqqtwptmn:4Sq4xxdBlwuS0LNIaboyCKZF2m@ec2-174-129-26-115.compute-1.amazonaws.com:5432/dcusv1j6fj1vsr'] || "postgres://localhost/bookmark_manager_#{env}")
# After declaring your models, you should finalise them
DataMapper.finalize
