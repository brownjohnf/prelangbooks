require 'rails_helper'

RSpec.describe "editions/show", :type => :view do
  before(:each) do
    @edition = assign(:edition, Edition.create!(
      :author => nil,
      :name => "Name",
      :publisher => nil,
      :universe => nil,
      :title => "Title",
      :binding => "Binding",
      :pages => 1,
      :language => "Language"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Binding/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Language/)
  end
end
