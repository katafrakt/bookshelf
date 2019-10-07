module Web::Controllers::Books
  class Index
    include Web::Action
    include Pagy::Backend

    expose :books, :pagy_data

    def call(params)
      @pagy_data, @books = pagy_hanami(BookRepository.new)
    end
  end
end
