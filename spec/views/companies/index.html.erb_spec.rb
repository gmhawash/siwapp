require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
        :name => "Name",
        :tax_id => "Tax",
        :currency => "Currency",
        :address => "Address",
        :email => "Email",
        :url => "Url",
        :email_body => "Email Body",
        :email_subject => "Email Subject",
        :phone => "Phone"
      ),
      Company.create!(
        :name => "Name",
        :tax_id => "Tax",
        :currency => "Currency",
        :address => "Address",
        :email => "Email",
        :url => "Url",
        :email_body => "Email Body",
        :email_subject => "Email Subject",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tax".to_s, :count => 2
    assert_select "tr>td", :text => "Currency".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email Body".to_s, :count => 2
    assert_select "tr>td", :text => "Email Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
