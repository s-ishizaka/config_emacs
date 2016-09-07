;; init.el

;;ロードパスの追加
(setq load-path
      (append
	'("~/.emacs.d")
	load-path))

;;オープニングメッセージを表示しない
(setq inhibit-startup-message t)

;;行数表示
(global-linum-mode t)

;; Language.
(set-language-environment 'Japanese)
(set-locale-environment nil)

;;外部から/へのコピペ
(setq x-select-enable-clipboard t)

;; 対応する括弧の色の設定
(setq show-paren-style 'mixed)
(show-paren-mode 1)

;;行末の空白を表示
(setq-default show-trailing-whitespace t)

;;位置
;; Color table: http://life.a.la9.jp/hp/color/rgb-tab.html
;;現在行を目立たせる
(global-hl-line-mode)
;;カーソルが何文字目か
(column-number-mode t)
;;カーソルが何行目か
(line-number-mode t)
;;カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;;行
;;行の一括削除
(setq kill-whole-line t)
;;バッファの最後でnewlineで新規行を追加するのを禁止する
(setq next-line-add-newlines nil)

;;バックアップファイルを作らない
(setq backup-inhibited t)
;;終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;補完
;;補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)
;;部分一致の補完機能を使う
;;(partial-completion-mode t)
;;補完可能なものを随時表示
(icomplete-mode 1)

;; 予約語を色分けする
(global-font-lock-mode t)

;;key bind
(keyboard-translate ?\C-h ?\C-?)

(define-key global-map (kbd "M-?") 'help-for-help)
(define-key global-map (kbd "C-z") 'undo)
(define-key global-map (kbd "C-c i") 'indent-region)
(define-key global-map (kbd "C-c C-i") 'hippie-expand)
(define-key global-map (kbd "C-c ;") 'comment-dwim)
(define-key global-map (kbd "C-o") 'toggle-input-method)
(define-key global-map (kbd "M-C-g") 'grep)
(define-key global-map (kbd "C-[ M-C-g") 'goto-line)
(define-key global-map (kbd "C-|") 'hs-toggle-hiding)


;;画像ファイルを表示
(auto-image-file-mode t)

;;メニューバーを消す
(menu-bar-mode -1)
;;ツールバーを消す
(tool-bar-mode -1)

;;カーソルの点滅を止める
(blink-cursor-mode 0)

;;evalした結果を全部表示
(setq eval-expression-print-length nil)

;;現在の関数名を上部に表示する
;;(witch-function-mode 1)

;;ビープ音を無効
(setq ring-bell-function 'ignore)

;;標準Elispの設定
(load "config/builtins")

;;非標準Elispの設定
;;(load "config/packages")

;;end

