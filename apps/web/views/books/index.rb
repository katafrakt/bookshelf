module Web::Views::Books
  class Index
    include Web::View
    include Pagy::Frontend

    def pagy_url_for(page, pagy)
      options = { pagy_data.vars[:page_param] => page }.merge(pagy_data.vars[:params])
      routes.path(:books, options)
    end

    def pagy_nav(*args)
      _raw super
    end

    def pagy_info(*args)
      _raw super
    end
  end
end
