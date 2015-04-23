require 'spec_helper'
require 'twbootstrap_objects/button'

RSpec.describe TwbootstrapObjects::Button do
  it 'raises an argument error for unknown button types' do
    %w(error secondary test).each do |button_type|
      expect{ TwbootstrapObjects::Button.new( type: button_type ) }.to raise_error( ArgumentError )
    end
  end

  it 'raises an argument error for unknown button sizes' do
    expect{ TwbootstrapObjects::Button.new( size: 'big' ) }.to raise_error( ArgumentError )
  end

  it 'defaults to not block level' do
    expect( subject ).not_to be_block
  end

  it 'can be set to block level' do
    expect( TwbootstrapObjects::Button.new( block: true ) ).to be_block
  end

  it 'defaults to not-active' do
    expect( subject ).not_to be_active
  end

  it 'can be set as active' do
    expect( TwbootstrapObjects::Button.new( active: true ) ).to be_active
  end

  it 'defaults to enabled' do
    expect( subject ).to be_enabled
  end

  it 'can be set to disabled' do
    expect( TwbootstrapObjects::Button.new( enabled: false ) ).not_to be_enabled
  end

  %w(block active enabled).each do |attr_name|
    it "converts truthy and falsy in the #{attr_name} setter to true and false" do
      subject.public_send( "#{attr_name}=", 'truthy')
      expect( subject.public_send("#{attr_name}?") ).to eq( true )

      subject.public_send( "#{attr_name}=", nil)
      expect( subject.public_send("#{attr_name}?") ).to eq( false )
    end
  end
end