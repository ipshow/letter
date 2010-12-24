require 'test_helper'

class LettersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Letter.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Letter.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Letter.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to letter_url(assigns(:letter))
  end
  
  def test_edit
    get :edit, :id => Letter.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Letter.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Letter.first
    assert_template 'edit'
  end

  def test_update_valid
    Letter.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Letter.first
    assert_redirected_to letter_url(assigns(:letter))
  end
  
  def test_destroy
    letter = Letter.first
    delete :destroy, :id => letter
    assert_redirected_to letters_url
    assert !Letter.exists?(letter.id)
  end
end
