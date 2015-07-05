require 'rails_helper'

describe "Home page" do
  it "'StaticPages'と書いてあるかを確認する" do
    visit '/static_pages/home'
    expect(page).to have_content('StaticPages')
  end

  it "'StaticPages'とtitle要素に書いてあるかを確認する" do
    visit '/static_pages/home'
    expect(page).to have_title('FirstApp')
  end
end

describe "Help page" do
  it "'help'と書いてあるかを確認する" do
    visit '/static_pages/help'
    expect(page).to have_content('help')
  end
end

describe "About page" do
  it "'about'と書いてあるかを確認する" do
    visit '/static_pages/about'
    expect(page).to have_content('about')
  end
end
