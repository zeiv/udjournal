require 'spec_helper'

describe "sabstracts/show" do
  before(:each) do
    @sabstract = assign(:sabstract, stub_model(Sabstract,
      :title => "Title",
      :content => "MyText",
      :user_id => 1,
      :departmnent_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
