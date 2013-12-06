require 'spec_helper'

describe "papers/index" do
  before(:each) do
    assign(:papers, [
      stub_model(Paper,
        :sabstract_id => 1,
        :user_id => 2,
        :department_id => 3
      ),
      stub_model(Paper,
        :sabstract_id => 1,
        :user_id => 2,
        :department_id => 3
      )
    ])
  end

  it "renders a list of papers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
