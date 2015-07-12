require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :cell_phone => "Cell Phone",
      :home_phone => "Home Phone",
      :work_phone => "Work Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Work Phone/)
  end
end
