class EpisodeSerializer < ActiveModel::Serializer
  attributes :uuid,
             :slug,
             :title,
             :summary,
             :description,
             :published_at

  has_one :audio
  belongs_to :channel

  def published_at
    object.published_at.to_formatted_s
  end
end
