Deploying the lightweight torrent tracker [opentracker](http://erdgeist.org/arts/software/opentracker/)

## Supported CentOS 6 x86

I packaged the opentracker in an rpm package which is available on http://repository.visibilityspots.com.

## Example for node.pp manifest:

```puppet
node 'HOSTNAME' {
  yumrepo { 'Visibilityspots':
    baseurl  => 'http://repository.visibilityspots.com',
    descr    => 'Visibilityspots repository',
    enabled  => 1,
    gpgcheck => 0
  }

  include ::opentracker

}
```

## default params

By default those parameters will be used according to the params class but you can override them in your nodes manifest:


```puppet
  $pkg_name         = 'opentracker'
  $pkg_version      = 'installed'
```

Feel free to report issue's or comments.
