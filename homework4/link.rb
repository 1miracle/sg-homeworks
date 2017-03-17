class Link < Document
  def parse
    tag = 'a'
    super(tag)
  end
end
