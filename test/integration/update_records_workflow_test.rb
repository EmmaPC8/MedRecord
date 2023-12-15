# frozen_string_literal: true
# require "test_helper"

# class EditRecordWorkflowTest < ActionDispatch::IntegrationTest

#     test "should edit the Tom records" do
#         record = records{:tom_test}
#         get "/records/#{record.id}/edit"
#         assert_response :success

#         patch "/records#{record.id}", params:{record: {name: "tom", course: "4DSmith", allergy: "crustaceans", medication: true, title: "epi-pen"}}
#         assert_response :found
#         assert_select 'a',"redirected"

#         get "/records"
#         assert_response :ok
#         assert_select "div div", 4
#         assert_select "div div p","name:\n    tom"
#         assert_select "div div p","course:\n   4DSmith"
#         assert_select "div div p", "allergy:\n   crustaceans"
#         assert_select "div div p","medication: is availble"
#         assert_select "div div p","title:\n  epi-pen"



#     end



# end
