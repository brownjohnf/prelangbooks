require 'rails_helper'

RSpec.describe "universes/edit", :type => :view do
  before(:each) do
    @universe = assign(:universe, Universe.create!(
      :author => nil,
      :name => "MyString",
      :string => "MyText"
    ))
  end

  it "renders the edit universe form" do
    render

    assert_select "form[action=?][method=?]", universe_path(@universe), "post" do

      assert_select "input#universe_author_id[name=?]", "universe[author_id]"

      assert_select "input#universe_name[name=?]", "universe[name]"

      assert_select "textarea#universe_string[name=?]", "universe[string]"
    end
  end
end
