
#
# Fix issues with Linux compliance policies
#

# SSH Client Protocol
cookbook_file "/etc/ssh/ssh_config" do
  source "ssh_config"
end


