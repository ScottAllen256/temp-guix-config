(use-modules (gnu)
             (gnu packages))

;; system language
(define sss-lang "en_US")

;; system timezone
(define sss-timezone "US/LosAngeles")

;; system keyboard layout
(define sss-keyboard-layout "us")

;; caps to control enabled
;; (define sss-keyboard-caps-to-ctrl
  ;; #t)

;; system hostname
(define sss-hostname "skye")

;; disk partitioning
(define sss-filesystems
  (list (file-system
         (device "/dev/vda2")
         (mount-point "/")
         (type "ext4"))
        (file-system
         (device "/dev/vda1")
         (mount-point "/boot/efi")
         (type "vfat"))))

;; packages that should only be installed in the current host
;; or (define sss-per-host-packages '())
(define sss-per-host-packages '(
                                ;; AMD non-free drivers
                                ;; "amd-microcode" "amdgpu-firmware"
                                ;; Games
                                ;; "prismlauncher" "steam")
  )

;; location where you cloned SSS Git repository
(define sss-clone-dir
  "$HOME/personal/sss")

;;
;; Define the active palette for all users accounts
;; You should reconfigure and ideally restart the system
;; for all changes to take effect
;;
;; Note: You could choose on a per-user basis to set a fixed palette
;; and not follow system wide, by just redefining this value
;;
;; Possible values are:
;;   - sss-palette-ef-bio
;;   - sss-palette-ef-cyprus
;;   - sss-palette-ef-dream
;;   - sss-palette-heavy-metal
;;   - sss-palette-solarized-light
;;   - sss-palette-ef-autumn
;;
(define-public sss-active-palette
  'sss-palette-ef-dream)

;; Nix packages to install
(define-public sss-nixpkgs
  '("yaml-language-server" "bash-language-server"
    "monaspace"
    "jdt-language-server"
    "nil"
    "black"
    "pyright"
    "marksman"
    "_1password-gui"
    "_1password-cli"
    "stack"
    "sbt"
    ;;"scala_2_13"
    "firefox"
    "thunderbird"
    "postman"
    "vscode-langservers-extracted"
    "nwg-look"
    "krew"
    "mermaid-cli"
    "jetbrains.idea-community"))

;; Flatpak remotes to add to the user
(define sss-flatpak-user-remotes '((flathub . "https://dl.flathub.org/repo/flathub.flatpakrepo")))

;; Flatpak packages to install
(define sss-flatpak-pkgs '("app.drey.Warp" "com.usebottles.bottles"))

;; Additional Sway startup commands on per-host basis
(define sss-sway-extra-startups
'("swaymsg -- output eDP-1 scale 1.5"))

;; Additional Labwc startup commands on per-host basis
(define sss-labwc-extra-startups
'("wlr-randr --output eDP-1 --scale 1.5  >/dev/null 2>&1 &"))


