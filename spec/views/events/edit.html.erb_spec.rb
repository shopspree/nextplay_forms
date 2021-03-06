require 'spec_helper'

describe "events/edit" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "MyString",
      :description => "MyString",
      :max_questions => 1,
      :user_id => 1
    ))
  end

  it "renders the edit event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => events_path(@event), :method => "post" do
      assert_select "input#event_name", :name => "event[name]"
      assert_select "input#event_description", :name => "event[description]"
      assert_select "input#event_max_questions", :name => "event[max_questions]"
      assert_select "input#event_user_id", :name => "event[user_id]"
    end
  end
end
