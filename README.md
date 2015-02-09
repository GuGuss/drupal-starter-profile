# How to use ?

The STARTER_PROFILE is a starter Drupal 7 installation profile that you can extend to build your Drupal sites.


## Requirements

Here is what you need to use the STARTER_PROFILE:
* [System requirements for installing Drupal](http://drupal.org/requirements)
* [Git](http://git-scm.com)
* [Drush](http://drupal.org/project/drush) (*Drush make* is included in Drush 5.x, but not included in older versions. If you happen to have an older Drush installed, it's strongly recommended to update it.)


## Getting Started

### 1. Download it

Download the [archive](https://github.com/GuGuss/starter-profile/archive/master.zip) or clone the repository:
```
$ git clone https://github.com/GuGuss/starter-profile.git
```

### 2. Rename it

Rename the folder and files to "yourprofilename":
```
[yourprofilename]
* yourprofilename.info
* yourprofilename.make
* yourprofilename.profile
```

Open those files and rename every instance of STARTER_PROFILE to "yourprofilename".

### 3. Customize it

It's your turn to customize the profile based on what you need. Here are the possible things you might want to do:

#### Adding new modules

To add a *contributed project* (module, theme, library...), simply add it on your ``yourprofilename.make``:
```
projects[token][version] = "1.5"
projects[token][subdir] = "contrib"
projects[token][type] = "module"
```

To add a *custom module or theme*, simply place it under ``yourprofilename/modules/custom`` or ``yourprofilename/themes/custom``, and add it on your ``yourprofilename.info``:
```
dependencies[] = your_custom_module
```

#### Changing versions

To change the version of a project, simply edit your ``yourprofilename.make`` and enter the version you want for a specific project.
To change Drupal Core version, edit ``drupal-core.make``.

#### Applying patches

To apply a patch to a mocule (ie: Views), simply add the following line on your ``yourprofilename.make``:
```
projects[views][patch][] = "http://drupal.org/files/views-entity_label-1651726-26.patch"
```

#### What else ?

Most of the things you'll want to do are within the ``yourprofilename.profile`` (create content types, blocks, user permissions...)

### 4. Build it

Let's use Drush to *build your profile*:
```
$ cd yourprofilename
$ drush make --no-core --contrib-destination yourprofilename.make .
```

This should download the contributed projects (modules, themes...) within your profile:
```
[yourprofilename]
* yourprofilename.info
* yourprofilename.make
* yourprofilename.profile
* [modules]
  * [contrib]
    * [admin_menu]
    * ...
```

Let's use Drush to *build Drupal core*:
```
$ cd ..
$ drush make yourprofile/drupal-core.make www
```

This should download Drupal Core within the ``www`` folder:
```
[yourprofilename]
* yourprofilename.info
* ...
[www]
* install.php
* ...
```

### 5. Link it

Link your profile to the Drupal ``profiles`` folder, using a symbolinc link:
```
$ cd www/profiles
$ ln -s ../../yourprofilename yourprofilename
```

You should end up with:
```
[yourprofilename]
[www]
* [profiles]
  * [yourprofilename]
```

### 6. Install it

You can install your profile through the UI as a basic installation profile, or via Drush:
```
$ cd www
$ drush si yourprofilename --db-url=mysql://sqluser:password@localhost/database_name --account-pass=admin -y
```


Congratulations \o/
