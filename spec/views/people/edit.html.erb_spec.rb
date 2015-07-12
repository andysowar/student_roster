require 'rails_helper'

RSpec.describe "people/edit", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :cell_phone => "MyString",
      :home_phone => "MyString",
      :work_phone => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    assert_select "form[action=?][method=?]", person_path(@person), "post" do

      assert_select "input#person_first_name[name=?]", "person[first_name]"

      assert_select "input#person_last_name[name=?]", "person[last_name]"

      assert_select "input#person_email[name=?]", "person[email]"

      assert_select "input#person_cell_phone[name=?]", "person[cell_phone]"

      assert_select "input#person_home_phone[name=?]", "person[home_phone]"

      assert_select "input#person_work_phone[name=?]", "person[work_phone]"
    end
  end
end
