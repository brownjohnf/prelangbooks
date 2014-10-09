require 'rails_helper'

RSpec.describe "editions/new", :type => :view do
  before(:each) do
    assign(:edition, Edition.new(
      :author => nil,
      :name => "MyString",
      :publisher => nil,
      :universe => nil,
      :title => "MyString",
      :binding => "MyString",
      :pages => 1,
      :language => "MyString"
    ))
  end

  it "renders new edition form" do
    render

    assert_select "form[action=?][method=?]", editions_path, "post" do

      assert_select "input#edition_author_id[name=?]", "edition[author_id]"

      assert_select "input#edition_name[name=?]", "edition[name]"

      assert_select "input#edition_publisher_id[name=?]", "edition[publisher_id]"

      assert_select "input#edition_universe_id[name=?]", "edition[universe_id]"

      assert_select "input#edition_title[name=?]", "edition[title]"

      assert_select "input#edition_binding[name=?]", "edition[binding]"

      assert_select "input#edition_pages[name=?]", "edition[pages]"

      assert_select "input#edition_language[name=?]", "edition[language]"
    end
  end
end
