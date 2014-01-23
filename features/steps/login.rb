class Login < Spinach::FeatureSteps


  # def Login.step(step, &block)
  #   Spinach::FeatureSteps.step(step, &block)
  # end
  #define_singleton_method('Lorsque') { 'step' }

  # def Lorsque(step, &block)
  #   Spinach::FeatureSteps.step(step, &block)
  # end

  Lorsque 'je me connecte en tant que admin' do
    visit '/'
    fill_in 'Username', :with => "user"
    fill_in 'Password', :with => "password"
    click_button 'LOGIN'
  end

  Alors "je dois voir la page d'accueil" do
    page.should have_content "user"
  end


end
