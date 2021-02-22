require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'create new user' do
  	scenario 'should be successful' do 
  		visit  new_user_registration_path
  		within('form') do 
  			fill_in 'Name', with: 'john'
  			fill_in 'Username', with: 'john'
  			fill_in 'Email', with:'john@gmail.com'
  			fill_in 'user_password', with:'123456'
  			fill_in 'user_password_confirmation', with:'123456'
  		end
  		click_button 'Sign up'
  		 expect(page).to have_content("Welcome! You have signed up successfully.")
  	end
   end

  current_user = User.first_or_create!(email: 'masha@example.com', name: 'masha', username:'masha', password: 'password',
                                       password_confirmation: 'password')
article = Article.create(
      title: 'Example',
      text: 'A valid text',
      author: current_user
    )

category_1 = Category.create(
      name: 'category_1',
      priority: 1
    )
category_2 = Category.create(
      name: 'category_2',
      priority: 2
    )
category_3 = Category.create(
      name: 'category_3',
      priority: 3
    )
category_4 = Category.create(
      name: 'category_4',
      priority: 4
    )
a_1 = ArticlesCategory.create(article_id: article.id, category_id: category_1.id)
  scenario 'Correct user creation' do
    visit new_user_registration_path
    fill_in 'Name', with: 'masha'
    fill_in 'Username', with: 'masha'
    fill_in 'Email', with: 'masha@example.com'
    fill_in 'user_password', with: 'password'
   fill_in 'user_password_confirmation', with: 'password'
    click_on 'Sign up'
     expect(current_path).to eq(root_path)
  end

end
