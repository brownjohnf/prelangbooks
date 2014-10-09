require 'rails_helper'

RSpec.describe "entities/show", :type => :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :type => "Type",
      :type_id => 1,
      :universe => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
