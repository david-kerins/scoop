require 'rails/generators'
require 'rails/generators/migration'

class ActsAsTaggableOnSteroidsGenerator < Rails::Generators::Base 
  
  include Rails::Generators::Migration
  
  def self.source_root
     @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end
  
  # Implement the required interface for Rails::Generators::Migration.
  #
  def self.next_migration_number(dirname) #:nodoc:
    next_migration_number = current_migration_number(dirname) + 1
    if ActiveRecord::Base.timestamped_migrations
      [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % next_migration_number].max
    else
      "%.3d" % next_migration_number
    end
  end
  
  def create_migration_file
    if defined?(ActiveRecord)
      migration_template 'migration.rb', 'db/migrate/acts_as_taggable_migration.rb'
    end
  end
end
