require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("The places list path", {:type => :feature}) do
  it("will enter a place and it will be saved on the list") do
    visit("/")
    fill_in('description', :with => "Seattle")
    click_button('Add Place')
    click_link('back')
    expect(page).to have_content("Seattle")
  end
end
