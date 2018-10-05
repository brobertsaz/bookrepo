require 'rails_helper'

RSpec.feature 'Students', type: :feature do
  describe 'registration' do
    let!(:school) { create :school }

    before do
      visit root_path
      expect(page).to have_content 'Student Sign In'
      within('#student') do
        click_link 'Sign Up'
      end
    end

    context 'with existing school' do
      it 'creates new student' do
        fill_in 'Email', with: 'user@example.com'
        fill_in 'Password', with: 'password'
        fill_in 'Password confirmation', with: 'password'
        select(school.name, from: 'School')
        click_button 'Sign up'
        expect(page).to have_content 'You have signed up successfully'
        expect(Student.last.email).to eq 'user@example.com'
      end
    end

    context 'without existing school' do
      it 'cannot create new student' do
        fill_in 'Email', with: 'user@example.com'
        fill_in 'Password', with: 'password'
        fill_in 'Password confirmation', with: 'password'
        click_button 'Sign up'
        expect(page).to have_content 'School must exist'
      end
    end
  end
end
