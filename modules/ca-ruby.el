(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(add-hook 'ruby-mode-hook
          '(lambda ()
             (require 'inf-ruby)
             (require 'ruby-electric)
             (inf-ruby-keys)
             (load-library "rdoc-mode")))

(add-to-list 'load-path (make-conf-path "rinari/util"))

(provide 'ca-ruby)
