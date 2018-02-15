require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('button adds artists to list', {:type => :feature}) do
  it('takes text input and adds it to a list') do
    visit('/')
    fill_in('artist', :with => 'Radiohead')
    click_button('Submit')
    expect(page).to have_content('Radiohead')
  end
end
