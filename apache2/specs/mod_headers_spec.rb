require 'minitest/spec'

describe_recipe 'apache2::mod_headers' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'enables mod_headers' do
    link("#{node[:apache][:dir]}/mods-enabled/headers.load").must_exist
  end
end
