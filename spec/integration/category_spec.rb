require 'rails_helper'

RSpec.describe 'groups test', type: :feature do
  before :each do
    User.destroy_all
    @user = User.create!(name: 'Milu', email: 'milu@gmail.com', password: '123456')
    @category = Category.new(user: @user, name: 'foods', icon: '⭐')
  end

  it 'can get root without login' do
    visit categorys_path
    expect(page).to have_content 'Track your expenses'
  end
  
end