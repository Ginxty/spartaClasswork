require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end

  it "no price should be more than £10" do
    @xml_menu.search('food').each do |food|
      pricing = food.element_children[1].content.tr('£','').to_f
      expect(pricing).to be < 10
    end
      
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    calories = @xml_menu.search('food').each do |food|
      food.children[3] unless food[4] then ""
    end
    expect()
  end

  it "should have all waffle dishes stating you get two waffles" do

  end

end