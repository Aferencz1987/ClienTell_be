require 'rails_helper'


RSpec.describe 'edit review', type: :request do
  describe 'mutation: reviewEdit' do
      it 'edits client review' do
        user = User.create!(email: 'testemail@test.com', password: 'testpassword', password_confirmation: 'testpassword')
        client = Client.create!(email: Faker::Internet.email)
        review = Review.create!(
          user: user,
          client: client,
          rating: 4,
          safety_meter: 8
        )

        post graphql_path, params: { query: mutation(review_id: review.id, size: 7.0, body: "laddy daddy we Like to party") }
        json_response = JSON.parse(@response.body, symbolize_names: true)

        expected = [review.id, 7.0, "laddy daddy we Like to party", review.rating, review.safety_meter]
        actual = [json_response[:data][:reviewEdit][:review][:id].to_i,
                  json_response[:data][:reviewEdit][:review][:size].to_f,
                  json_response[:data][:reviewEdit][:review][:body],
                  json_response[:data][:reviewEdit][:review][:rating].to_i,
                  json_response[:data][:reviewEdit][:review][:safetyMeter].to_i]

        expect(actual).to eq(expected)
      end
    end

    def mutation(review_id:, size:, body:)
        <<~GQL
          mutation {
            reviewEdit(
              reviewId: #{review_id},
              size: #{size},
              body: "#{body}"
            )
            {
              review{
                id
                size
                body
                safetyMeter
                rating
              }
            }
          }
        GQL
    end

end