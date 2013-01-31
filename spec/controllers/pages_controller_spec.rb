require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "devrait reussir" do
      get 'home'
       response.should have_selector("title",
                    :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "devrait reussir" do
      get 'contact'
       response.should have_selector("title",
                    :content => "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end

  describe "GET 'about'" do
    it "devrait reussir" do
      get 'about'
       response.should have_selector("title",
                    :content => "Simple App du Tutoriel Ruby on Rails | A propos")
    end
  end
end