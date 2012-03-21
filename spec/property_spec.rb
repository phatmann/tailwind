require 'spec_helper'
require 'tailwind/property.rb'

module Tailwind
  describe Property do
    subject { Property.new('name', :required => true) }

    it "should know its name" do
      subject.name.should == 'name'
    end

    it "should know if required" do
      subject.required.should be_true
    end
  end
end