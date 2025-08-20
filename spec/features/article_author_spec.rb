require 'rails_helper'

RSpec.describe 'Article author feature', type: :feature do
  it 'shows the author on the article index page' do
    # This test will pass when the index view displays the author for each article
    article = Article.create!(title: 'Test', body: 'Body', author: 'Jane Doe')
    visit articles_path
    expect(page).to have_content('Jane Doe')
  end

  it 'shows the author on the article show page' do
    # This test will pass when the show view displays the author for the article
    article = Article.create!(title: 'Test', body: 'Body', author: 'Jane Doe')
    visit article_path(article)
    expect(page).to have_content('Jane Doe')
  end

  it 'requires an author when creating an article' do
    # This test will pass when the form and model validate presence of author
    visit new_article_path
    fill_in 'Title', with: 'Test'
    fill_in 'Body', with: 'Body'
    click_button 'Create Article'
    expect(page).to have_content("Author can't be blank")
  end

  it 'requires an author when editing an article' do
    # This test will pass when the edit form and model validate presence of author
    article = Article.create!(title: 'Test', body: 'Body', author: 'Jane Doe')
    visit edit_article_path(article)
    fill_in 'Author', with: ''
    click_button 'Update Article'
    expect(page).to have_content("Author can't be blank")
  end
end
