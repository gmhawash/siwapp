require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "Name",
      :tax_id => "Tax",
      :currency => "Currency",
      :address => "Address",
      :email => "Email",
      :url => "Url",
      :email_body => "Email Body",
      :email_subject => "Email Subject",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Tax/)
    expect(rendered).to match(/Currency/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Email Body/)
    expect(rendered).to match(/Email Subject/)
    expect(rendered).to match(/Phone/)
  end
end
