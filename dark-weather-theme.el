;;; dark-weather.el --- A Dark Weather theme

;; Title: Dark Weather Theme
;; Project: dark-weather-theme
;; Author: Saran Siriphantnon <deoxen0n2@gmail.com>
;; Version: 0.1
;; Keywords:: themes
;; URL: https://github.com/sarans21/dark-weather-theme
;; License: MIT

;;; Commentary:

;; A dark theme that can run in both GUI and terminal.

;;; Code:
(deftheme dark-weather
  "A custom theme.")

(let ((class '((class color) (min-colors 89)))
      (fg1     "#e0e1dd")
      (fg2     "#2a9d8f")
      (fg3     "#353535")
      (bg1     "#0d1b2a")
      (bg2     "#2b303b")
      (bg3     "#6c757d")
      (bg4     "#474f61")
      (hlbg1   "#506477")
      (hlbg2   "#2a9d8f")
      (hlbg3   "#303340")
      (keyword "#e0e1dd")
      (keyword2 "#2a9d8f")
      (comment "#8288a2")
      (string  "#ff595e")
      (type    "LightSteelBlue")
      (fn      "LightSteelBlue")
      (err1    "#f6bd60"))
  (custom-theme-set-faces
   'dark-weather
   `(default                       ((,class (:foreground ,fg1 :background ,bg2))))
   `(font-lock-keyword-face        ((,class (:foreground ,keyword2 :slant italic))))
   `(font-lock-comment-face        ((,class (:foreground ,comment))))
   `(font-lock-string-face         ((,class (:foreground ,string))))
   `(font-lock-type-face           ((,class (:foreground ,type))))
   `(font-lock-variable-name-face  ((,class (:foreground ,type))))
   `(font-lock-constant-face       ((,class (:foreground ,type))))
   `(font-lock-function-name-face  ((,class (:foreground ,type))))
   `(font-lock-warning-face        ((,class (:foreground ,err1))))
   `(success                       ((,class (:foreground ,type :bold t :underline t))))
  
   ;; > UI
   `(border                     ((,class (:foreground ,string))))
   `(vertical-border            ((,class (:foreground ,comment    :background ,bg2))))
   `(fringe                     ((,class (:foreground ,bg2        :background ,bg2))))
   `(region                     ((,class (:background ,hlbg1))))
   `(highlight                  ((,class (:background ,hlbg1))))
   `(hl-line                    ((,class (:background ,hlbg3))))
   `(scroll-bar                 ((,class (:background ,hlbg1))))
   ;; >> Divider
   `(window-divider             ((,class (:foreground ,string :background ,bg1))))
   `(window-divider-first-pixel ((,class (:background ,bg1))))
   `(window-divider-last-pixel  ((,class (:background ,bg1))))
   ;; >> Minibuffer
   `(minibuffer-prompt          ((,class (:foreground ,fg2))))

   ;; > Paren
   `(show-paren-match-face      ((,class (:foreground ,fg1 :background ,hlbg2))))
   `(show-paren-match           ((,class (:foreground ,fg1 :background ,hlbg2))))
   
   ;; > Mode-line, Header-line
   `(mode-line                  ((,class (:background ,bg2 :foreground ,fg1 :distant-foreground ,fg1 :box '(:line-width 4 :color ,bg3)))))
   `(header-line                ((,class (:inherit 'mode-line))))
   
   ;; > Tabs & Centaur-Tabs
   `(tab-line                   ((,class (:inherit 'mode-line))))
   `(centaur-tabs-selected      ((,class (:inherit 'mode-line))))
   `(centaur-tabs-unselected    ((,class (:inherit 'mode-line :background ,bg4))))
   ;; `(centaur-tabs-default       ((,class (:inherit 'mode-line))))

   ;; > Solaire-mode
   `(solaire-default-face ((,class (:foreground ,fg1 :background ,bg3))))

   ;; > Company
   `(company-echo-common              ((,class (:foreground ,fg1 :background ,hlbg1))))
   `(company-preview                  ((,class (:foreground ,fg1 :background ,hlbg1))))
   `(company-preview-common           ((,class (:foreground ,fg1 :background ,hlbg1))))
   `(company-tooltip                  ((,class (:foreground ,fg1 :background ,bg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,fg1 :background ,hlbg2))))
   `(company-tooltip-selection        ((,class (:foreground "black" :background ,hlbg2 :bold t))))

   ;; > Ivy
   `(ivy-current-match ((,class (:inherit region))))

   ;; > Eglot
   `(eglot-symbol-face           ((,class (:foreground ,fn))))
   `(eglot-highlight-symbol-face ((,class (:foreground ,fn))))

   ;; > Flymake & Flycheck & Languages
   `(flymake-error             ((,class (:underline (:style wave) :foreground ,err1))))
   `(flycheck-info             ((,class (:underline (:style wave) :foreground ,keyword))))
   `(flycheck-error            ((,class (:underline (:style wave) :foreground ,err1))))
   `(clojure-keyword-face      ((,class (:foreground ,fn))))

   ;; > Magit
   `(magit-section-heading     ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight   ((,class (:background ,hlbg1))))

   ;; > Treemacs
   `(treemacs-root-face        ((,class (:foreground ,keyword2 :slant italic))))
   ))

(setq window-divider-default-right-width 1)

(provide-theme 'dark-weather)

;;; dark-weather-theme.el ends here
