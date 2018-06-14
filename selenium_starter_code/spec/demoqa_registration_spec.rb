require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoRegIo.new.selenium_demoqa_registration
    @driver.access_registration_form
    @first_name_random = GeneratorIo.new.name_generator.first_name_random
    @last_name_random = GeneratorIo.new.name_generator.last_name_random
    @day_random = GeneratorIo.new.dob_generator.day_random
    @month_random = GeneratorIo.new.dob_generator.month_random
    @year_random = GeneratorIo.new.dob_generator.year_random
    @user_random = GeneratorIo.new.username_generator.user_random(@first_name_random, @last_name_random, @year_random)
    @email_random = GeneratorIo.new.email_generator.email_random(@first_name_random)
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field(@first_name_random)
      expect(@driver.get_first_name_field_value['value']).to eq @first_name_random
    end

    it 'should accept a last name' do
      @driver.set_last_name_field(@last_name_random)
      expect(@driver.get_last_name_field_value['value']).to eq @last_name_random
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option(0)
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(0)
    end

    it 'should have a country default of Afghanistan' do
      @driver.get_selected_country
    end

    it 'accept a new DOB' do
      @driver.dob_day_list_select(@day_random)
      @driver.dob_month_list_select(@month_random)
      @driver.dob_year_list_select(@year_random)
    end

    it 'should accept a new country value' do
      @driver.get_selected_country
      @driver.country_dropdown_list_select('United Kingdom')
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('01323853745')
    end

    it 'should accept a username' do
      @driver.set_user_name_field(@user_random)
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('Lorem ipsum dolor sit amet, consectetur adipisicing.')
    end

    it 'should accept a password' do
      @driver.set_password_field('dgtehrye')
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('dgtehrye')
    end

    it 'Should accept an email' do
      @driver.get_email_field_value
      @driver.set_email_field(@email_random)
    end

    it '' do
      sleep 10
    end
  end
end
