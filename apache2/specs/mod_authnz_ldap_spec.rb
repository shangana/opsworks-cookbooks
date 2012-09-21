require 'minitest/spec'

describe_recipe 'apache2::mod_authnz_ldap' do
  include MiniTest::Chef::Resources
  include MiniTest::Chef::Assertions

  it 'enables mod_authnz_ldap' do
    link("#{node[:apache][:dir]}/mods-enabled/authnz_ldap.load").must_exist
  end
end
