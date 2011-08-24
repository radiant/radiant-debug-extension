require File.expand_path("../../spec_helper", __FILE__)

describe EnvDumpPage do
  before :each do
    @request = ActionController::TestRequest.new :url => '/env_dump/'
    @page = EnvDumpPage.new
    @page.request = @request
  end

  it "should render the request environment" do
    @page.render.should =~ %r{=>}
    @page.render.should =~ %r{^<html><body><pre>}
  end

  it "should not be cached" do
    @page.cache?.should be_false
  end
end