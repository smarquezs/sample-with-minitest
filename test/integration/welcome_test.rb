require "test_helper"

# To be handled correctly this spec must end with "Integration Test"
describe "Welcome Integration Test" do
  describe "Visit Home" do
    it "have content 'welcome'" do
      visit root_path
      page.find("h1").must_have_content("Welcome to our Blog")
    end
  end
end
