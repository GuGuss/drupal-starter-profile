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

; --------------------
; Download Drupal Core
; --------------------
  
projects[drupal][version] = "7.26"