require 'rails_helper'

RSpec.describe "entities/new", :type => :view do
  before(:each) do
    assign(:entity, Entity.new(
      :type => "",
      :type_id => 1,
      :universe => nil,
      :name => "MyString"
    ))
  end

  it "renders new entity form" do
    render

    assert_select "form[action=?][method=?]", entities_path, "post" do

      assert_select "input#entity_type[name=?]", "entity[type]"

      assert_select "input#entity_type_id[name=?]", "entity[type_id]"

      assert_select "input#entity_universe_id[name=?]", "entity[universe_id]"

      assert_select "input#entity_name[name=?]", "entity[name]"
    end
  end
end
