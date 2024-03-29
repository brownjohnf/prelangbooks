require 'rails_helper'

RSpec.describe "locations/index", :type => :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :universe => nil
      ),
      Location.create!(
        :universe => nil
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
