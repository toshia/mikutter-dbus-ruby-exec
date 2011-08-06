;; exec-on-mikutter

(require 'dbus)
(defun exec-on-mikutter (ruby-code)
  "Execute ruby on mikutter"
  (apply 'dbus-call-method
    :session
    "org.mikutter.dynamic"
    "/org/mikutter/MyInstance"
    "org.mikutter.eval"
    "ruby" (list ruby-code)))

(defun exec-on-mikutter-current-buffer ()
  (interactive)
  (exec-on-mikutter (buffer-string)))
