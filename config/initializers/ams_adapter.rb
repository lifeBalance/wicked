# Since we want to have a root key on our responses we should use the Json adapter.
ActiveModel::Serializer.config.adapter = :json
