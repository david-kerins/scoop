Gem::Specification.new do |s|
  s.name     = "acts_as_taggable_on_steroids"
  s.version  = "1.1.1"
  s.date     = "2010-10-05"
  s.summary  = "Rails plugin that is based on acts_as_taggable by DHH but includes extras such as tests, smarter tag assignment, and tag cloud calculations."
  s.email    = "jonathan.viney@gmail.com"
  s.homepage = "http://github.com/jviney/acts_as_taggable_on_steroids"
  s.description = "Rails plugin that is based on acts_as_taggable by DHH but includes extras such as tests, smarter tag assignment, and tag cloud calculations."
  s.has_rdoc = true
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.rubyforge_project = "acts_as_taggable_on_steroids"
  s.authors  = "Jonathan Viney"
  s.files    = [
    "acts_as_taggable_on_steroids.gemspec",
    "CHANGELOG",
    "init.rb",
    "lib/acts_as_taggable.rb",
    "lib/tag.rb",
    "lib/tag_list.rb",
    "lib/tagging.rb",
    "lib/tags_helper.rb",
    "lib/generators/acts_as_taggable_on_steroids",
    "lib/generators/acts_as_taggable_on_steroids/acts_as_taggable_on_steroids_generator.rb",
    "lib/generators/acts_as_taggable_on_steroids/templates",
    "lib/generators/acts_as_taggable_on_steroids/templates/migration.rb",
    "MIT-LICENSE",
    "Rakefile",
    "README",
    ]
  s.test_files = [  
    "test/abstract_unit.rb",
    "test/acts_as_taggable_test.rb",
    "test/database.yml",
    "test/fixtures",
    "test/fixtures/magazine.rb",
    "test/fixtures/magazines.yml",
    "test/fixtures/photo.rb",
    "test/fixtures/photos.yml",
    "test/fixtures/post.rb",
    "test/fixtures/posts.yml",
    "test/fixtures/special_post.rb",
    "test/fixtures/subscription.rb",
    "test/fixtures/subscriptions.yml",
    "test/fixtures/taggings.yml",
    "test/fixtures/tags.yml",
    "test/fixtures/user.rb",
    "test/fixtures/users.yml",
    "test/schema.rb",
    "test/tag_list_test.rb",
    "test/tag_test.rb",
    "test/tagging_test.rb",
    "test/tags_helper_test.rb"
    ]
end
