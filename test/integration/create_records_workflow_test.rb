# frozen_string_literal: true

require 'test_helper'

class CreateRecordWorkflowTest < ActionDispatch::IntegrationTest
  test 'should try to create a new test records that does have the medication required for the students allergy' do
    get 'http://localhost:3002/new'
    assert_response :success

    post '/records',
         params: { record: { name: 'Bob', course: '4DSmith', allergy: 'crustaceans', medication: true,
                             title: 'epi-pen' } }
    assert_response :found
    assert_select 'a', 'redirected'

    get '/records'
    assert_response :ok
    assert_select 'div div', 5
    assert_select 'div div p', "name:\n   Bob"
    assert_select 'div div p strong', 'course'
    assert_select 'div div p strong', 'allergy'
    assert_select 'div div p strong', 'medication'
    assert_select 'div div p strong', 'title'
  end

  test 'should try to create a new test records that does not have the medication required for the students allergy' do
    get 'http://localhost:3002/new'
    assert_response :success

    post '/records',
         params: { record: { name: 'Ava', course: '4cDancer', allergy: 'crustaceans', medication: false,
                             title: 'epi-pen' } }
    assert_response :found
    assert_select 'a', 'redirected'

    get '/records'
    assert_response :ok
    assert_select 'div div', 5
    assert_select 'div div p', "name:\n    Ava"
    assert_select 'div div p strong', 'course'
    assert_select 'div div p strong', 'allergy'
    assert_select 'div div p strong', 'medication'
    assert_select 'div div p strong', 'title'
  end
end
