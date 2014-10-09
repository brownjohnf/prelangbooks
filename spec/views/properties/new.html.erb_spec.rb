require 'rails_helper'

RSpec.describe "properties/new", :type => :view do
  before(:each) do
    assign(:property, Property.new(
      :type => "",
      :type_id => 1,
      :key_name => "MyString",
      :value => "MyText"
    ))
  end

  it "renders new property form" do
    render

    assert_select "form[action=?][method=?]", properties_path, "post" do

      assert_select "input#property_type[name=?]", "property[type]"

      assert_select "input#property_type_id[name=?]", "property[type_id]"

      assert_select "input#property_key_name[name=?]", "property[key_name]"

      assert_select "textarea#property_value[name=?]", "property[value]"
    end
  end
end
