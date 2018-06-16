require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :tax_id => "MyString",
      :currency => "MyString",
      :address => "MyString",
      :email => "MyString",
      :url => "MyString",
      :email_body => "MyString",
      :email_subject => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input[name=?]", "company[name]"

      assert_select "input[name=?]", "company[tax_id]"

      assert_select "input[name=?]", "company[currency]"

      assert_select "input[name=?]", "company[address]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[url]"

      assert_select "input[name=?]", "company[email_body]"

      assert_select "input[name=?]", "company[email_subject]"

      assert_select "input[name=?]", "company[phone]"
    end
  end
end
