module Web::Views::Books
  class Index
    include Web::View
    include Pagy::Frontend::Hanami

    pagy_routes_path :books
  end
end
