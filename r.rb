require 'bundler/setup' # Set up gems listed in the Gemfile.
Bundler.require

def run
  while true
    print "> "
    v = readline

    result = \
    begin
      eval(v)
    rescue Exception => e
      [e.class.to_s, e.message].to_s
    end
    puts "out: #{result}"
  end

  # db = SQLite3::Database.new(":memory:")
end

run
