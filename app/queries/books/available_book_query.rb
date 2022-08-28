class Books::AvailableBookQuery
  def self.run
    # Tưởng tượng nó là một query 20 dòng rất phức tạp
    Book.all.where('quantity > borrowed')
  end
end
