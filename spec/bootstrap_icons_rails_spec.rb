require 'spec_helper'

describe BootstrapIconsRails do
  include RSpecHtmlMatchers
  include ActionView::Context

  describe 'files' do
    it 'should have correct dirs' do
      expect(Dir.exists?('./app/assets/images')).to be_truthy
      expect(Dir.exists?('./app/assets/images/bi')).to be_truthy
      expect(Dir.exists?('./app/assets/stylesheets')).to be_truthy
      expect(Dir.exists?('./app/helpers/bootstrap_icons/rails')).to be_truthy
    end

    it 'should have correct files' do
      expect(File.exists?('./app/helpers/bootstrap_icons/rails/bi_icon_helper.rb')).to be_truthy
      expect(File.exists?('./app/assets/stylesheets/bootstrap_icons.scss')).to be_truthy
      expect(File.exists?('./lib/bootstrap_icons_rails/engine.rb')).to be_truthy
      expect(File.exists?('./lib/bootstrap_icons_rails/version.rb')).to be_truthy
      expect(File.exists?('./lib/bootstrap_icons_rails/parsers/bi_icon_parser.rb')).to be_truthy
      expect(File.exists?('./lib/bootstrap_icons_rails/parsers/parse_methods.rb')).to be_truthy
    end
  end

  %w[bi_icon].each do |method|
    describe "#{method} tags" do
      it 'should return correct type tags' do
        expect(send method, 'alarm').to eq '<i class="bi bi-alarm"></i>'
      end

      it 'should return correct class tags' do
        expect(send method, 'alarm').to eq '<i class="bi bi-alarm"></i>'
        expect(send method, 'alarm', class: 'test').to eq '<i class="bi bi-alarm test"></i>'
        expect(send method, 'alarm', class: 'bi-alarm').to eq '<i class="bi bi-alarm"></i>'
      end

      it 'should return correct style tags' do
        expect(send method, 'alarm', style: 'color: Tomato;').to eq '<i class="bi bi-alarm" style="color: Tomato;"></i>'
      end

      it 'should return correct data tags' do
        expect(send method, 'alarm', data: { bi_transform: 'rotate-90' }).to eq '<i class="bi bi-alarm" data-bi-transform="rotate-90"></i>'
      end

      it 'should return correct text tags' do
        expect(send method, 'alarm', text: 'Camera').to have_tag('i', with: { class: 'bi bi-alarm'})
        expect(send method, 'alarm', text: 'Camera').to have_tag('span', text: 'Camera')
        expect(send method, 'alarm', text: 'Camera', style: 'color: Tomato;').to have_tag('span', text: 'Camera', with: {style: 'color: Tomato;'})
        expect(send method, 'alarm', text: 'Camera').to have_tag('span', text: 'Camera', with: {class: 'bi-text'})
      end

      it 'should return correct title tags' do
        expect(send method, 'alarm', title: 'camera-title').to eq '<i class="bi bi-alarm" title="camera-title"></i>'
        expect(send method, 'alarm', text: 'Camera', title: 'camera-title').to eq '<i class="bi bi-alarm" title="camera-title"></i><span class="bi-text">Camera</span>'
      end

      it 'should return correct all tags' do
        expect(send method, 'alarm', test: 'test').to eq '<i class="bi bi-alarm" test="test"></i>'
        expect(send method, 'alarm', 'aria-hidden': true).to eq '<i class="bi bi-alarm" aria-hidden="true"></i>'
        expect(send method, 'alarm', aria: {hidden: true}).to eq '<i class="bi bi-alarm" aria-hidden="true"></i>'
      end

      it 'should return tags with text on right side' do
        expect(send method, 'alarm', text: 'Camera', right: true).to eq '<span class="bi-text-r">Camera</span><i class="bi bi-alarm"></i>'
      end
    end
  end
end
