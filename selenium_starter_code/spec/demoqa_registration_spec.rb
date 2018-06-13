require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    # @driver.get_selected_country('Afghanistan')
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field('John')
      expect(@driver.get_first_name_field_value['value']).to eq 'John'
    end

    it 'should accept a last name' do
      @driver.set_last_name_field('Smith')
      expect(@driver.get_last_name_field_value['value']).to eq 'Smith'
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option(0)
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(0)
    end

    it 'should have a country default of Afghanistan' do
      p @driver.country_dropdown_list_select(0)
      # expect(@driver.country_dropdown_list_select.text).to eq('Afghanistan')
    end

    it 'accept a new DOB' do
      pending
    end

    it 'should accept a new country value' do
      pending
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('01323853745')
    end

    it 'should accept a username' do
      @driver.set_user_name_field('Jack')
    end

    it 'should accept a about yourself text' do
      pending
    end

    it 'should accept a password' do
      pending
    end

    it 'should accept a password confirmation' do
      pending
    end

  end

end
