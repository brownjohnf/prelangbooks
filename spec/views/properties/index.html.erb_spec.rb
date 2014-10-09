require 'rails_helper'

RSpec.describe "properties/index", :type => :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :type => "Type",
        :type_id => 1,
        :key_name => "Key Name",
        :value => "MyText"
      ),
      Property.create!(
        :type => "Type",
        :type_id => 1,
        :key_name => "Key Name",
        :value => "MyText"
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Key Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
