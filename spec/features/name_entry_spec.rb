feature 'Name entry form' do
  scenario 'Enter names' do
    sign_in_and_play
    #save_and_open_page

    expect(page).to have_content 'Charlotte vs. Luci'
  end
end