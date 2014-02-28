; ------------
; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; -----------
; API version
; -----------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2

; ------------------------
; Download Contrib Modules
; ------------------------

projects[admin_menu][version] = "3.0-rc4"
projects[admin_menu][subdir] = "contrib"
projects[admin_menu][type] = "module"

projects[admin_views][version] = "1.2"
projects[admin_views][subdir] = "contrib"
projects[admin_views][type] = "module"

projects[ctools][version] = "1.3"
projects[ctools][subdir] = "contrib"
projects[ctools][type] = "module"

projects[devel][version] = 1.3
projects[devel][subdir] = "contrib"
projects[devel][type] = "module"

projects[entity][version] = "1.2"
projects[entity][subdir] = "contrib"
projects[entity][type] = "module"

projects[entityreference][version] = "1.0"
projects[entityreference][subdir] = "contrib"
projects[entityreference][type] = "module"

projects[views][version] = "3.7"
projects[views][subdir] = "contrib"
projects[views][type] = "module"

projects[views_bulk_operations][version] = "3.1"
projects[views_bulk_operations][subdir] = "contrib"
projects[views_bulk_operations][type] = "module"

; -----------------------
; Download Contrib Themes
; -----------------------

projects[omega][version] = "3.1"
projects[omega][subdir] = "contrib"
projects[omega][type] = "module"