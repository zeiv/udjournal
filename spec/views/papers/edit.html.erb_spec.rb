require 'spec_helper'

describe "papers/edit" do
  before(:each) do
    @paper = assign(:paper, stub_model(Paper,
      :sabstract_id => 1,
      :user_id => 1,
      :department_id => 1
    ))
  end

  it "renders the edit paper form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", paper_path(@paper), "post" do
      assert_select "input#paper_sabstract_id[name=?]", "paper[sabstract_id]"
      assert_select "input#paper_user_id[name=?]", "paper[user_id]"
      assert_select "select#paper_department_id[name=?]", "paper[department_id]"
    end
  end
end
