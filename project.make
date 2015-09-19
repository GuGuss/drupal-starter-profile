; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
core = 7.x

; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
api = 2

; Drush make allows a default sub directory for all contributed projects.
defaults[projects][subdir] = contrib

; Contributed Modules

projects[admin_menu][version] = 3.0-rc5
projects[admin_menu][type] = module

projects[admin_views][version] = 1.5
projects[admin_views][type] = module

projects[ctools][version] = 1.9
projects[ctools][type] = module

projects[devel][version] = 1.5
projects[devel][type] = module

projects[entity][version] = 1.6
projects[entity][type] = module

projects[entityreference][version] = 1.1
projects[entityreference][type] = module

projects[views][version] = 3.11
projects[views][type] = module

projects[views_bulk_operations][version] = 3.3
projects[views_bulk_operations][type] = module

; Contributed Themes

projects[omega][version] = 4.4
projects[omega][type] = module
