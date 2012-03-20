require 'spec_helper'
require 'thing'

describe Thing do
  describe "(owner)" do
    it "should know who owns it"
    it "should know which properties only its owner can change"
    it "optionally allows only owners to remove it"
  end

  describe "(properties)" do
    it "should know what properties it maintains"
    it "should know what properties are required"
  end

  describe "(parent)" do
    it "should know who its parent is"
    it "can set a property when added"
    it "can set a property when removed"
  end

  describe "(track)" do
    it "can track when it is created"
    it "can track when it is updated"
    it "can track when a given property changes"
  end

  describe "(restrictions)" do
    it "can restrict a property to a set of values"
  end

  describe "(defaults)" do
    it "can start with a set of default values"
  end
end