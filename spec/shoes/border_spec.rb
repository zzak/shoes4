require 'shoes/spec_helper'

shared_examples_for "basic border" do
  it "retains app" do
    subject.app.should eq(app)
  end

  it "creates gui object" do
    subject.gui.should_not be_nil
  end
end

describe Shoes::Border do
  let(:parent) { Shoes::Flow.new(app, app) }
  let(:blue)  { Shoes::COLORS[:blue] }
  let(:app) { Shoes::App.new }
  let(:opts){ {} }
  subject { Shoes::Border.new(app, parent, blue, opts) }

  it_behaves_like "basic border"
  it_behaves_like "object with style"
end
