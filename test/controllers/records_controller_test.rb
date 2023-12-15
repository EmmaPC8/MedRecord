# frozen_string_literal: true

require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @record = records(:Dave_test)
  end

  test 'should get index' do
    get records_url, as: :json
    assert_response :success
  end

  test 'should create record' do
    assert_difference('Record.count') do
      post records_url,
           # rubocop:todo Layout/LineLength
           params: { record: { allergy: @record.allergy, course: @record.course, medication: @record.medication, name: @record.name, title: @record.title } }, as: :json
      # rubocop:enable Layout/LineLength
    end

    assert_response :created
  end

  test 'should show record' do
    get record_url(@record), as: :json
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_record_url(@record), as: :json
  #   assert_response :success
  # end

  test 'should update record' do
    patch record_url(@record),
          # rubocop:todo Layout/LineLength
          params: { record: { allergy: @record.allergy, course: @record.course, medication: @record.medication, name: @record.name, title: @record.title } }, as: :json
    # rubocop:enable Layout/LineLength
    assert_response :success
  end

  test 'should delete record' do
    assert_difference('Record.count', -1) do
      delete record_url(@record), as: :json
    end

    assert_response :no_content
  end
end
