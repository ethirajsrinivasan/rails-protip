# frozen_string_literal: true

RSpec.describe Rails::Protip do
  it "has a version number" do
    expect(Rails::Protip::VERSION).not_to be_nil
  end

  it "defines a Rails engine" do
    expect(Rails::Protip::Engine).to be < Rails::Engine
  end
end
