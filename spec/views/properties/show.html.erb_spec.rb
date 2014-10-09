require 'rails_helper'

RSpec.describe "properties/show", :type => :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :type => "Type",
      :type_id => 1,
      :key_name => "Key Name",
      :value => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Key Name/)
    expect(rendered).to match(/MyText/)
  end
end
