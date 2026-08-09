;;; islands-relax-light-celadon-theme-test.el --- Theme smoke tests -*- lexical-binding: t; -*-

;;; Code:

(require 'ert)
(require 'cl-lib)

(defconst islands-relax-light-celadon-test-root
  (file-name-directory
   (directory-file-name
    (file-name-directory (or load-file-name buffer-file-name)))))

(add-to-list 'custom-theme-load-path islands-relax-light-celadon-test-root)

(defun islands-relax-light-celadon-test-face-spec (face)
  "Return the true-color plist registered for FACE by the theme."
  (let ((entry (cl-find-if
                (lambda (setting)
                  (and (eq (car setting) 'theme-face)
                       (eq (cadr setting) face)))
                (get 'doom-islands-relax-light-celadon 'theme-settings))))
    (cadr (car (nth 3 entry)))))

(ert-deftest islands-relax-light-celadon-loads ()
  (load-theme 'doom-islands-relax-light-celadon t)
  (should (custom-theme-enabled-p 'doom-islands-relax-light-celadon))
  (should (eq (plist-get
               (get 'doom-islands-relax-light-celadon 'theme-properties)
               :background-mode)
              'light)))

(ert-deftest islands-relax-light-celadon-registers-theme-directory ()
  (let ((custom-theme-load-path nil))
    (load (expand-file-name "doom-islands-relax-light-celadon-theme.el"
                            islands-relax-light-celadon-test-root)
          nil nil t)
    (should (member islands-relax-light-celadon-test-root
                    custom-theme-load-path))))

(ert-deftest islands-relax-light-celadon-defines-core-faces ()
  (load-theme 'doom-islands-relax-light-celadon t)
  (dolist (face '(default cursor region font-lock-keyword-face
                  font-lock-function-name-face mode-line mode-line-inactive))
    (should (facep face)))
  (should (equal
           (plist-get (islands-relax-light-celadon-test-face-spec 'default)
                      :background)
           "#e4ecef"))
  (should (equal
           (plist-get
            (islands-relax-light-celadon-test-face-spec
             'font-lock-keyword-face)
            :foreground)
           "#067d17")))

;;; islands-relax-light-celadon-theme-test.el ends here
