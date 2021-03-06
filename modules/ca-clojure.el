(require 'cider)

(autoload 'clojure-mode "clojure-mode" "clojure mode" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

(add-hook 'clojure-mode-hook 'cider-mode)
(setq nrepl-log-messages t)
(setq cider-repl-use-clojure-font-lock t)

; cider mode works better with company-mode than ac apparently
(require 'company)
(add-hook 'cider-repl-mode-hook 'company-mode)
(add-hook 'cider-mode-hook 'company-mode)
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'cider-turn-on-eldoc-mode)

;; (autoload 'slime "swank-clojure" "loading the swank-clojure" t)
;; (add-hook 'slime-mode-hook
;;           '(lambda ()
;;              (add-to-list 'slime-lisp-implementations '(sbcl ("sbcl")))))

;; (require 'ac-slime)
;; (add-hook 'slime-mode-hook 'set-up-slime-ac)

(provide 'ca-clojure)
