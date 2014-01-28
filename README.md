I use this template to build Parallels Desktop 9 compatible Vagrant boxes.

This is a [veewee](https://github.com/jedi4ever/veewee) template for CentOS 6.5 minimal, based on template provided with veewee, but slightly modified. You can see the adjustments comparing initial commit with the following one.

**Mods**:

* veewee user is not created at all - vagrant user is used from the begining
* prl-tools-lin.iso guest tools mounted/installed
* yum update, yum groupinstall 'Development tools'

### Usage

```
# build the box
bundle exec veewee parallels build centos-6.5-x86_64-minimal --force

# export the box
bundle exec veewee parallels export centos-6.5-x86_64-minimal --force

# make built box available for Vagrant
# Note: use the same name you'll use in your Vagrantfile 'config.vm.box' option
vagrant box add centos-6.5-x86_64-minimal ~/PATH_TO_YOUR/veewee/centos-6.5-x86_64-minimal.box --provider=parallels
```

### Vagrantfile entry

```
config.vm.box = 'centos-6.5-x86_64-minimal'
```

## Notes

* I put the symlink to Parallels Desktop guest tools which will be installed in the VM, which points to its default location. Make sure it's right.
