require 'spec_helper'

describe "posters/show" do
  before(:each) do
    @poster = assign(:poster, stub_model(Poster,
      :user_id => 1,
      :department_id => 2,
      :sabstract_id => 3
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
