require 'twbootstrap_objects/table'

RSpec.describe TwbootstrapObjects::Table do
  it 'should default to unstriped' do
    expect( subject ).not_to be_striped
  end

  it 'should default to uncondensed' do
    expect( subject ).not_to be_condensed
  end

  it 'should default to unbordered' do
    expect( subject ).not_to be_bordered
  end

  it 'should default to no hover states' do
    expect( subject ).not_to be_hovered
  end

  it 'should let you set it to striped on construction' do
    expect( TwbootstrapObjects::Table.new( striped: true ) ).to be_striped
  end

  it 'should let you set it to condensed on construction' do
    expect( TwbootstrapObjects::Table.new( condensed: true ) ).to be_condensed
  end

  it 'should let you set it to bordered on construction' do
    expect( TwbootstrapObjects::Table.new( bordered: true ) ).to be_bordered
  end

  it 'should let you set it to support hover states on construction' do
    expect( TwbootstrapObjects::Table.new( hovered: true ) ).to be_hovered
  end

  %w(striped condensed bordered hovered).each do |option|
    it "should let you set it to #{option} after initialization" do
      subject.public_send("#{option}=", true)
      expect( subject ).to self.send("be_#{option}" )
    end
  end
end