class Header < Document
  def parse
    tag = 'h2'
    super(tag)
  end
end
