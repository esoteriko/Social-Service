class Art < ApplicationRecord
	include Elasticsearch::Model
	include Elasticsearch::Model::Callbacks

	index_name Rails.application.class.parent_name.underscore
    document_type self.name.downcas

    settings index: { number_of_shards: 1 } do
  mapping dynamic: false do
    indexes :title, analyzer: 'english'
    indexes :body, analyzer: 'english'
  end
end
end
