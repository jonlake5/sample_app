require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }  
  
  describe "HOME page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the correct title 'Home'" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom named title" do
      visit root_path
      expect(page).not_to have_title("Home")
    end 
 end 
  
  
  
  describe "Help page" do
  
    it "should have the h1 'Help'" do
      visit help_path 
      expect(page).to have_content('Help')
    end

    it "should have the correct title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit about_path 
      expect(page).to have_content('About Us')
    end
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the correct title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end




  describe "Contact page" do
    it "should have the content 'Contact' " do
      visit contact_path
      expect(page).to have_content('Contact')
    end
    it "should have the correct title 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
 end 


end
