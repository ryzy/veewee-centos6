Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat6_64',
  :iso_file => "CentOS-6.5-x86_64-minimal.iso",
  :iso_src => "http://yum.singlehop.com/CentOS/6.5/isos/x86_64/CentOS-6.5-x86_64-minimal.iso",
  :iso_md5 => "0d9dc37b5dd4befa1c440d2174e88a87",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    #"chef.sh",
    "vagrant.sh",
    "parallels.sh",
    #"virtualbox.sh",
    #"vmfusion.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
