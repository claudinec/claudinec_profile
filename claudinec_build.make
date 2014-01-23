; Minimal Drush makefile for Drupal 7.

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.

core = 7.x

; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.

api = 2

; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[drupal][type] = "core"
projects[drupal][version] = "7.26"

; Defaults
; --------

defaults[projects][subdir] = "contrib"

; Modules
; -------

projects[admin_menu][type] = "module"
projects[admin_menu][version] = "3.0-rc4"

projects[backup_migrate][type] = "module"
projects[backup_migrate][version] = "2.7"

projects[ctools][type] = "module"
projects[ctools][version] = "1.3"

projects[date][type] = "module"
projects[date][version] = "2.6"

projects[devel][type] = "module"
projects[devel][version] = "1.3"

projects[diff][type] = "module"
projects[diff][version] = "3.2"

projects[environment_indicator][type] = "module"
projects[environment_indicator][version] = "2.2"

projects[features][type] = "module"
projects[features][version] = "2.0"

projects[google_analytics][type] = "module"
projects[google_analytics][version] = "1.4"

projects[google_analytics_reports][type] = "module"
projects[google_analytics_reports][version] = "1.3"

projects[honeypot][type] = "module"
projects[honeypot][version] = "1.16"

projects[markdown][type] = "module"
projects[markdown][version] = "1.2"

projects[module_filter][type] = "module"
projects[module_filter][version] = "1.8"

projects[stage_file_proxy][type] = "module"
projects[stage_file_proxy][version] = "1.4"

projects[strongarm][type] = "module"
projects[strongarm][version] = "2.0"

projects[token][type] = "module"
projects[token][version] = "1.5"

projects[wysiwyg][type] = "module"
projects[wysiwyg][version] = "2.2"
; Patch to support CKEditor version 4.
projects[wysiwyg][patch][] = "http://drupal.org/files/wysiwyg-support_v4_ckeditor-1853550-73.patch"

; Themes
; ------

projects[adaptivetheme][type] = "theme"
projects[adaptivetheme][version] = "3.1"

; Libraries
; ---------

; CKEditor for use with WYSIWYG module.
libraries[ckeditor][type] = "libraries"
libraries[ckeditor][download][type] = "file"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.2/ckeditor_4.3.2_full.tar.gz"

libraries[profiler][type] = "libraries"
libraries[profiler][download][type] = "get"
libraries[profiler][download][url] = "http://ftp.drupal.org/files/projects/profiler-7.x-2.0-beta2.tar.gz"

