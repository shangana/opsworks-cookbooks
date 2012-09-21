require 'minitest/spec'

describe_recipe 'apache2::mod_authz_default' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'enables mod_authz_default' do
    link("#{node[:apache][:dir]}/mods-enabled/authz_default.load").must_exist
  end
end
