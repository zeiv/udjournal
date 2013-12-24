require 'spec_helper'

describe "posters/edit" do
  before(:each) do
    @poster = assign(:poster, stub_model(Poster,
      :user_id => 1,
      :department_id => 1,
      :sabstract_id => 1
    ))
  end

  it "renders the edit poster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", poster_path(@poster), "post" do
      assert_select "input#poster_user_id[name=?]", "poster[user_id]"
      assert_select "select#poster_department_id[name=?]", "poster[department_id]"
      assert_select "input#poster_sabstract_id[name=?]", "poster[sabstract_id]"
    end
  end
end
