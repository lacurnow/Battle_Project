feature 'Attack' do
  scenario 'When player 1 attacks player 2, a confirmation is returned' do
    sign_in_and_play
    click_button 'Attack!'
    #save_and_open_page
    expect(page).to have_content 'Charlotte uses an attack! Luci has been weakened'
  end

  scenario 'When player 2 is attacked, loses 10HP' do
    sign_in_and_play
    click_button 'Attack!'
    click_link 'OK'
    expect(page).not_to have_content 'Luci: 60HP'
    expect(page).to have_content 'Luci: 50HP'
  end
end