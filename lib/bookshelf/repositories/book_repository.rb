require 'pagy/extras/hanami'

class BookRepository < Hanami::Repository
    include Pagy::Hanami::RepositoryIntegration
end
