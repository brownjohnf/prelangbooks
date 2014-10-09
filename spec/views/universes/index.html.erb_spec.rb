require 'rails_helper'

RSpec.describe "universes/index", :type => :view do
  before(:each) do
    assign(:universes, [
      Universe.create!(
        :author => nil,
        :name => "Name",
        :string => "MyText"
      ),
      Universe.create!(
        :author => nil,
        :name => "Name",
        :string => "MyText"
      )
    ])
  end

  it "renders a list of universes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
