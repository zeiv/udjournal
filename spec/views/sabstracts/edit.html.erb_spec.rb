require 'spec_helper'

describe "sabstracts/edit" do
  before(:each) do
    @sabstract = assign(:sabstract, stub_model(Sabstract,
      :title => "MyString",
      :content => "MyText",
      :user_id => 1,
      :departmnent_id => 1
    ))
  end

  it "renders the edit sabstract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sabstract_path(@sabstract), "post" do
      assert_select "input#sabstract_title[name=?]", "sabstract[title]"
      assert_select "textarea#sabstract_content[name=?]", "sabstract[content]"
      assert_select "input#sabstract_user_id[name=?]", "sabstract[user_id]"
      assert_select "input#sabstract_departmnent_id[name=?]", "sabstract[departmnent_id]"
    end
  end
end
