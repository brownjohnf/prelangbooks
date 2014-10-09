require 'rails_helper'

RSpec.describe "editions/index", :type => :view do
  before(:each) do
    assign(:editions, [
      Edition.create!(
        :author => nil,
        :name => "Name",
        :publisher => nil,
        :universe => nil,
        :title => "Title",
        :binding => "Binding",
        :pages => 1,
        :language => "Language"
      ),
      Edition.create!(
        :author => nil,
        :name => "Name",
        :publisher => nil,
        :universe => nil,
        :title => "Title",
        :binding => "Binding",
        :pages => 1,
        :language => "Language"
      )
    ])
  end

  it "renders a list of editions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Binding".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Language".to_s, :count => 2
  end
end
