class BookRepository < Hanami::Repository
    def page(offset, size)
        books.offset(offset).limit(size).to_a
    end

    def count
        books.count
    end
end
