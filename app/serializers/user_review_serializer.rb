class UserReviewSerializer < ActiveModel::Serializer
  attributes %i[id content rating movie_title movie_id]
  belongs_to :reviewer
  belongs_to :movie

  def movie_title
    object.movie.title
  end
end