; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
core = 7.x

; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
api = 2

; Drupal Core
projects[drupal][patch][] = "https://drupal.org/files/issues/install-redirect-on-empty-database-728702-36.patch"
