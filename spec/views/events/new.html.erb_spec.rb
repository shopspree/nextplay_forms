require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :description => "MyString",
      :max_questions => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_description", :name => "event[description]"
      assert_select "input#event_max_questions", :name => "event[max_questions]"
      assert_select "input#event_user_id", :name => "event[user_id]"
    end
  end
end
