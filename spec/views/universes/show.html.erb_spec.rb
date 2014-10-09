require 'rails_helper'

RSpec.describe "universes/show", :type => :view do
  before(:each) do
    @universe = assign(:universe, Universe.create!(
      :author => nil,
      :name => "Name",
      :string => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
