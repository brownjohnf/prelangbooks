require 'rails_helper'

RSpec.describe "publishers/edit", :type => :view do
  before(:each) do
    @publisher = assign(:publisher, Publisher.create!(
      :name => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit publisher form" do
    render

    assert_select "form[action=?][method=?]", publisher_path(@publisher), "post" do

      assert_select "input#publisher_name[name=?]", "publisher[name]"

      assert_select "input#publisher_location[name=?]", "publisher[location]"
    end
  end
end
