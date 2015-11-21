class LinkSerializer < ActiveModel::Serializer
  attributes :subcategory

  def subcategory
    URI::encode(object.cl_sortkey.force_encoding('ISO-8859-1')
        .encode('utf-8', replace: nil).downcase.tr(' ', '_'))
  end

  def links
    { :self  => _self,
      :next  => _next,
      :graph => graph }
  end

  def graph
    href = URI::encode("/api/v1/graphs/#{self.sub_category[/([^0A]*(.)$)/]}")

    { :href   => href,
      :method => 'GET',
      :rel    => 'graph' }
  end

  def _self
    href = URI::encode("/api/v1/categories/#{self.sub_category[/([^0A]*(.)$)/]}")

    { :href   => href,
      :method => 'GET',
      :rel    => 'self' }
  end

  def _next
    href = URI::encode("/api/v1/categories/#{object.cl_to}")

    { :href   => href,
      :method => 'GET',
      :rel    => '_next' }
  end
end
