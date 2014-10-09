require 'rails_helper'

RSpec.describe "entities/index", :type => :view do
  before(:each) do
    assign(:entities, [
      Entity.create!(
        :type => "Type",
        :type_id => 1,
        :universe => nil,
        :name => "Name"
      ),
      Entity.create!(
        :type => "Type",
        :type_id => 1,
        :universe => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of entities" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
