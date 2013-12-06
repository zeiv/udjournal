require 'spec_helper'

describe "papers/show" do
  before(:each) do
    @paper = assign(:paper, stub_model(Paper,
      :sabstract_id => 1,
      :user_id => 2,
      :department_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
