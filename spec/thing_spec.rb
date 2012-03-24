require 'spec_helper'
require 'tailwind/thing.rb'

module Tailwind
  describe Thing do
    context "with properties" do
      PROP_NAMES = [:prop1, :prop2]

      class ThingWithProperties < Thing
        maintains *PROP_NAMES
      end

      let(:thing)          { ThingWithProperties.new }
      let(:property_names) { ThingWithProperties.properties.map(&:name) }

      it "should know what properties it maintains" do
        property_names.should == PROP_NAMES
      end

      it "should allow property to be accessed" do
        thing.prop1 = "value"
        thing.prop1.should == "value"
      end

      it "should isolate properties to the class" do
        class ThingWithProperties2 < Thing
          maintains :prop3
        end

        thing2 = ThingWithProperties2.new
        property_names.should == PROP_NAMES
        ThingWithProperties2.properties.map(&:name).should  == [:prop3]
      end

      it "should know what properties are required"
    end

    context "with an owner" do
      it "should know who owns it"
      it "should know which properties only its owner can change"
      it "optionally allows only owners to remove it"
    end

    context "with a parent" do
      it "should know who its parent is"
      it "can set a property when added"
      it "can set a property when removed"
    end

    describe "that tracks" do
      it "can track when it is created"
      it "can track when it is updated"
      it "can track when a given property changes"
    end

    describe "with restrictions" do
      it "can restrict a property to a set of values"
    end

    describe "with defaults" do
      it "can start with a set of default values"
    end

    describe "that persists" do
      it "remembers it state between sessions"
    end
  end
end