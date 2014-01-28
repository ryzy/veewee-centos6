# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

cat > /etc/yum.repos.d/epel.repo << EOM
[epel]
name=epel
baseurl=http://download.fedoraproject.org/pub/epel/6/\$basearch
enabled=1
gpgcheck=0
EOM

#cat > /etc/yum.repos.d/remi.repo << EOM
#[remi]
#name=remi
#enabled=1
#gpgcheck=1
#gpgkey=http://rpms.famillecollet.com/RPM-GPG-KEY-remi
#mirrorlist=http://rpms.famillecollet.com/enterprise/\$releasever/remi/mirror
#sslverify=1
#EOM

yum clean all
yum -y update
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils rsync
yum -y groupinstall 'Development tools'
yum -y update

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
