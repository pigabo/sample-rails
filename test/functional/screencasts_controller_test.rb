require 'test_helper'

class ScreencastsControllerTest < ActionController::TestCase
  setup do
    @screencast = screencasts(:fast_rails_commands)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screencasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screencast" do
    assert_difference('Screencast.count') do
      post :create, screencast: { duration: @screencast.duration, link: @screencast.link, published_at: @screencast.published_at, source: @screencast.source, summary: @screencast.summary, title: @screencast.title, videourl: "#{@screencast.videourl} new" }
    end

    assert_redirected_to screencast_path(assigns(:screencast))
  end

  test "should show screencast" do
    get :show, id: @screencast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screencast
    assert_response :success
  end

  test "should update screencast" do
    put :update, id: @screencast, screencast: { duration: @screencast.duration, link: @screencast.link, published_at: @screencast.published_at, source: @screencast.source, summary: @screencast.summary, title: @screencast.title, videourl: @screencast.videourl }
    assert_redirected_to screencast_path(assigns(:screencast))
  end

  test "should destroy screencast" do
    assert_difference('Screencast.count', -1) do
      delete :destroy, id: @screencast
    end

    assert_redirected_to screencasts_path
  end
end
