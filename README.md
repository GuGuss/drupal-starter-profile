How to use
===============

The STARTER_PROFILE is a starter Drupal 7 installation profile that you can extend to build your Drupal sites.


Requirements
-----------

Here is what you need to use the STARTER_PROFILE:

* [System requirements for installing Drupal](http://drupal.org/requirements)
* [Git](http://git-scm.com)
* [Drush](http://drupal.org/project/drush) (*Drush make* is included in Drush 5.x, but not included in older versions. If you happen to have an older Drush installed, it's strongly recommended to update it.)


Getting Started
-----------

1. Download the profile

Download the [archive](https://github.com/GuGuss/starter-profile/archive/master.zip) or clone the repository:

```
$ git clone https://github.com/GuGuss/starter-profile.git
```

2. Rename the files

Rename every files and instances of STARTER_PROFILE to "yourprofilename".

3. Customize the profile

Now it's your turn to customize the profile based on what you need. Here are the possible things you might want to do:
### Adding new modules

To add a project (module, theme, library...), simply add it on your ``yourprofilename.make``:

```
projects[token][version] = "1.5"
projects[token][subdir] = "contrib"
projects[token][type] = "module"
```

### Changing versions

To change the version of a project, simply edit your ``yourprofilename.make`` and enter the version you want for a specific project.
To change Drupal Core version, edit ``drupal-core.make``.

### Applying patches

To apply a patch to a mocule (ie: Views), simply add the following line on your ``yourprofilename.make``:

```
projects[views][patch][] = "http://drupal.org/files/views-entity_label-1651726-26.patch"
```

4. Build your profile

Once you are set, it's time to build your profile.

@TODO

