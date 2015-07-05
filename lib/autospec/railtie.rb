module Autospec
  class Railtie < Rails::Railtie
    railtie_name :autospec
    rake_tasks do
      load 'tasks/autospec.rake'
    end
  end
end
