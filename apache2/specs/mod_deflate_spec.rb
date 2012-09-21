require 'minitest/spec'

describe_recipe 'apache2::mod_deflate' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'enables mod_deflate' do
    link("#{node[:apache][:dir]}/mods-enabled/deflate.load").must_exist
  end
end
