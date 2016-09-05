require 'rails_helper'

RSpec.describe 'Users', type: :feature, js: true do

  let!(:users) { 3.times.map { create(:user) }}

  it 'Show users list' do
    visit users_path

    users.each do |user|
      expect(page).to have_content user.full_name
    end
  end

  it 'Creates a new user' do
    visit users_path
    user_attrs = attributes_for(:user)

    expect {
      %i(full_name phone email).each do |attr|
        fill_in "user_#{attr}", with: user_attrs[attr]
      end
      click_button I18n.t('buttons.submit')
    }.to change{ User.count }.by(1)
  end
  
end
