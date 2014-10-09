require 'rails_helper'

RSpec.describe "universes/new", :type => :view do
  before(:each) do
    assign(:universe, Universe.new(
      :author => nil,
      :name => "MyString",
      :string => "MyText"
    ))
  end

  it "renders new universe form" do
    render

    assert_select "form[action=?][method=?]", universes_path, "post" do

      assert_select "input#universe_author_id[name=?]", "universe[author_id]"

      assert_select "input#universe_name[name=?]", "universe[name]"

      assert_select "textarea#universe_string[name=?]", "universe[string]"
    end
  end
end
