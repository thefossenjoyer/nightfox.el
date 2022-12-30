(autothemer-deftheme nightfox "A port of nightfox.nvim"

  ;; Specify the color classes used by the theme
  ((((class color) (min-colors #xFFFFFF))
    ((class color) (min-colors #xFF)))

    ;; Specify the color palette, color columns correspond to each of the classes above.
    (nightfox-bg  "#161616")
    (nightfox-fg  "#f2f4f8")

    (nightfox-black  "#282828")
    (nightfox-white  "#dfdfe0")
    (nightfox-red    "#EE5396") 
    (nightfox-green  "#25be6a")
    (nightfox-blue   "#78A9FF") 
    (nightfox-purple "#BE95FF")
    (nightfox-yellow "#08BDBA")
    (nightfox-orange "#3DDBD9")
    (nightfox-cyan   "#33B1FF")

    (nightfox-region  "#2a2a2a")
    (nightfox-comment "#525253")

    )

    ;; Specifications for Emacs faces.
    ;; Simpler than deftheme, just specify a face name and 
    ;; a plist of face definitions (nested for :underline, :box etc.)
   (
    (default (:foreground nightfox-fg :background nightfox-bg)) ;; (and backgroud foreground)

    ;; Programming ;;
    (font-lock-string-face (:foreground nightfox-green)) ;; strings
    (font-lock-keyword-face (:foreground nightfox-purple)) ;; keywords
    (font-lock-type-face (:foreground nightfox-yellow)) ;; variable types
    (font-lock-variable-name-face (:foreground nightfox-white)) ;; variable names
    (font-lock-comment-face (:foreground nightfox-comment)) ;; comments
    (font-lock-builtin-face (:foreground nightfox-red)) ;; builtin functions
    (font-lock-constant-face (:foreground nightfox-orange)) ;; constants
    (font-lock-function-name-face (:foreground nightfox-red)) ;; function names
    ;; END ;;

    ;; UI ;;
    (region (:background nightfox-region)) ;; selction background
    (mode-line (:foreground nightfox-fg :background nightfox-bg)) ;; modeline
    ;; END ;;
     )

    ;; Forms after the face specifications are evaluated.
    ;; (palette vars can be used, read below for details.)
   
   
    (custom-theme-set-variables 'nightfox
        `(ansi-color-names-vector [,nightfox-red
                                   ,nightfox-green
                                   ,nightfox-blue
                                   ,nightfox-purple
                                   ,nightfox-yellow
                                   ,nightfox-orange
                                   ,nightfox-cyan])))

(provide-theme 'nightfox) ;; theme ends here
