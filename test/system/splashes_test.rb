require 'application_system_test_case'

class SplashesTest < ApplicationSystemTestCase
  setup do
    @splash = splashes(:one)
  end

  test 'visiting the index' do
    visit splashes_url
    assert_selector 'h1', text: 'Splashes'
  end

  test 'should create splash' do
    visit splashes_url
    click_on 'New splash'

    click_on 'Create Splash'

    assert_text 'Splash was successfully created'
    click_on 'Back'
  end

  test 'should update Splash' do
    visit splash_url(@splash)
    click_on 'Edit this splash', match: :first

    click_on 'Update Splash'

    assert_text 'Splash was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Splash' do
    visit splash_url(@splash)
    click_on 'Destroy this splash', match: :first

    assert_text 'Splash was successfully destroyed'
  end
end
