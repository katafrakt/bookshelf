module Web::Controllers::Books
  class Index
    include Web::Action
    include Pagy::Backend

    expose :books, :pagy_data

    def call(params)
      @pagy_data, @books = pagy(BookRepository.new)
    end

    private

    def pagy_get_items(repo, pagy)
      repo.page(pagy.offset, pagy.items)
    end    
  end
end
