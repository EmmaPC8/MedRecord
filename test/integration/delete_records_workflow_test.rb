# frozen_string_literal: true
# #require "test_helper"

# #class DeleteRecordWorkflowTest < ActionDispatch::IntegrationTest

#   #  test "should delete the sam records" do
#         record = records{:sam_test}
#         get "/records"
#         assert_response :success
#         assert_select "div div", 4

#         delete "/records/#{record.id}"
#         assert_select 'a',"redirected"
#         assert_response :found

#         get "/records"
#         assert_response :success
#         assert_select "div div", 3
#     end

# end
