require 'test_helper'

class SpielerlistesControllerTest < ActionController::TestCase
  setup do
    @spielerliste = spielerlistes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spielerlistes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spielerliste" do
    assert_difference('Spielerliste.count') do
      post :create, spielerliste: { geburtsdatum: @spielerliste.geburtsdatum, name: @spielerliste.name, nr: @spielerliste.nr, position: @spielerliste.position, vorname: @spielerliste.vorname }
    end

    assert_redirected_to spielerliste_path(assigns(:spielerliste))
  end

  test "should show spielerliste" do
    get :show, id: @spielerliste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spielerliste
    assert_response :success
  end

  test "should update spielerliste" do
    put :update, id: @spielerliste, spielerliste: { geburtsdatum: @spielerliste.geburtsdatum, name: @spielerliste.name, nr: @spielerliste.nr, position: @spielerliste.position, vorname: @spielerliste.vorname }
    assert_redirected_to spielerliste_path(assigns(:spielerliste))
  end

  test "should destroy spielerliste" do
    assert_difference('Spielerliste.count', -1) do
      delete :destroy, id: @spielerliste
    end

    assert_redirected_to spielerlistes_path
  end
end
