require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :body => "MyText",
        :main_image => "MyText",
        :thumb_image => "MyText"
      ),
      Blog.create!(
        :title => "Title",
        :subtitle => "Subtitle",
        :body => "MyText",
        :main_image => "MyText",
        :thumb_image => "MyText"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Subtitle".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end