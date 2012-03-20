require 'spec_helper'
require 'thing/thing.rb'

describe "Thing" do
  context "with properties" do
    subject { TestThing.new }

    before(:all) do
      create_class('TestThing', Thing) do
        maintains :foo, :bar
      end
    end

    it "should know what properties it maintains" do
      subject.properties.map{|p| p.name}.should   == [:foo, :bar]
      TestThing.properties.map{|p| p.name}.should == [:foo, :bar]
    end

    it "should allow property to be accessed" do
      subject.foo = "value"
      subject.foo.should == "value"
    end

    it "should isolate properties to the class" do
      create_class('TestThing2', Thing) do
        maintains :zoo
      end

      thing2 = TestThing2.new
      subject.properties.map{|p| p.name}.should   == [:foo, :bar]
      thing2.properties.map{|p| p.name}.should  == [:zoo]
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