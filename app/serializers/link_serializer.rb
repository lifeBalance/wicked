class LinkSerializer < ActiveModel::Serializer
  attributes :subcategory

  def subcategory
    URI::encode(object.cl_sortkey.force_encoding('ISO-8859-1')
        .encode('utf-8', replace: nil).downcase.tr(' ', '_'))
  end
end
