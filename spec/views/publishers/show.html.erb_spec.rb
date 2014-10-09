require 'rails_helper'

RSpec.describe "publishers/show", :type => :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :name => "Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Location/)
  end
end
