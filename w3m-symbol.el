;;; w3m-symbol.el --- Stuffs to replace symbols for emacs-w3m -*- coding: iso-2022-7bit; -*-

;; Copyright (C) 2002  ARISAWA Akihiro <ari@mbf.sphere.ne.jp>

;; Author: ARISAWA Akihiro <ari@mbf.sphere.ne.jp>
;; Keywords: w3m, WWW, hypermedia, i18n

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;

;;; Code:

(eval-when-compile
  (defvar w3m-language))

(defgroup w3m-symbol nil
  "Symbols for w3m"
  :group 'w3m)

(defcustom w3m-default-symbol
  '("-+" " |" "--" " +" "-|" " |" "-+" ""
    "--" " +" "--" ""   "-+" ""   ""   ""
    "-+" " |" "--" " +" "-|" " |" "-+" ""
    "--" " +" "--" ""   "-+" ""   ""   ""
    " *" " +" " o" " #" " @" " -"
    " =" " x" " %" " *" " o" " #"
    " #"
    "<=UpDn ")
  "List of symbol string, used by defaultly."
  :group 'w3m-symbol
  :type `(list ,@(make-list 46 'string)))

(defcustom w3m-Chinese-BIG5-symbol
  '("$(0#3(B" "$(0#7(B" "$(0#5(B" "$(0#<(B" "$(0#6(B" "$(0#:(B" "$(0#=(B" ""
    "$(0#4(B" "$(0#>(B" "$(0#9(B" ""   "$(0#?(B" ""   ""   ""
    "$(0#3(B" "$(0#7(B" "$(0#5(B" "$(0#<(B" "$(0#6(B" "$(0#:(B" "$(0#=(B" ""
    "$(0#4(B" "$(0#>(B" "$(0#9(B" ""   "$(0#?(B" ""   ""   ""
    "$(0!&(B" "$(0!{(B" "$(0!w(B" "$(0!r(B" "$(0!|(B" "$(0!x(B"
    "$(0!v(B" "$(0!s(B" "$(0!t(B" "$(0!s(B" "$(0!r(B" "$(0!{(B"
    "$(0!s(B"
    "$(0!N"U"V(B")
  "List of symbol string, used in Chienese-BIG5 environment."
  :group 'w3m-symbol
  :type `(list ,@(make-list 46 'string)))

(defcustom w3m-Chinese-CNS-symbol
  '("$(G#3(B" "$(G#7(B" "$(G#5(B" "$(G#<(B" "$(G#6(B" "$(G#:(B" "$(G#=(B" ""
    "$(G#4(B" "$(G#>(B" "$(G#9(B" ""   "$(G#?(B" ""   ""   ""
    "$(G#3(B" "$(G#7(B" "$(G#5(B" "$(G#<(B" "$(G#6(B" "$(G#:(B" "$(G#=(B" ""
    "$(G#4(B" "$(G#>(B" "$(G#9(B" ""   "$(G#?(B" ""   ""   ""
    "$(G!&(B" "$(G!{(B" "$(G!w(B" "$(G!r(B" "$(G!|(B" "$(G!x(B"
    "$(G!v(B" "$(G!s(B" "$(G!t(B" "$(G!s(B" "$(G!r(B" "$(G!{(B"
    "$(G!s(B"
    "$(G!N"U"V(B")
  "List of symbol string, used in Chienese-CNS environment."
  :group 'w3m-symbol
  :type `(list ,@(make-list 46 'string)))

(defcustom w3m-Chinese-GB-symbol
  '("$A)`(B" "$A)@(B" "$A)P(B" "$A)0(B" "$A)H(B" "$A)&(B" "$A)4(B" ""
    "$A)X(B" "$A)8(B" "$A)$(B" ""   "$A)<(B" ""   ""   ""
    "$A)`(B" "$A)D(B" "$A)S(B" "$A)3(B" "$A)L(B" "$A)'(B" "$A)7(B" ""
    "$A)[(B" "$A);(B" "$A)%(B" ""   "$A)?(B" ""   ""   ""
    "$A!$(B" "$A!u(B" "$A!n(B" "$A!p(B" "$A!v(B" "$A!o(B"
    "$A!r(B" "$A!q(B" "$A!w(B" "$A!q(B" "$A!p(B" "$A!u(B"
    "$A!q(B"
    "$A!6!|!}(B")
  "List of symbol string, used in Chienese-GB environment."
  :group 'w3m-symbol
  :type `(list ,@(make-list 46 'string)))

(defcustom w3m-Japanese-symbol
  '("$B(+(B" "$B('(B" "$B(((B" "$B(#(B" "$B()(B" "$B("(B" "$B($(B" ""
    "$B(*(B" "$B(&(B" "$B(!(B" ""   "$B(%(B" ""   ""   ""
    "$B(+(B" "$B(7(B" "$B(8(B" "$B(.(B" "$B(9(B" "$B(-(B" "$B(/(B" ""
    "$B(:(B" "$B(1(B" "$B(,(B" ""   "$B(0(B" ""   ""   ""
    "$B!&(B" "$B""(B" "$B!y(B" "$B!{(B" "$B"#(B" "$B!z(B"
    "$B!}(B" "$B!|(B" "$B"$(B" "$B!|(B" "$B!{(B" "$B""(B"
    "$B!|(B"
    "$B"c","-(B")
  "List of symbol string, used in Japanese environment."
  :group 'w3m-symbol
  :type `(list ,@(make-list 46 'string)))

(defcustom w3m-Korean-symbol
  '("$(C&+(B" "$(C&'(B" "$(C&((B" "$(C&#(B" "$(C&)(B" "$(C&"(B" "$(C&$(B" ""
    "$(C&*(B" "$(C&&(B" "$(C&!(B" ""   "$(C&%(B" ""   ""   ""
    "$(C&+(B" "$(C&7(B" "$(C&8(B" "$(C&.(B" "$(C&9(B" "$(C&-(B" "$(C&/(B" ""
    "$(C&:(B" "$(C&1(B" "$(C&,(B" ""   "$(C&0(B" ""   ""   ""
    "$(C!$(B" "$(C!`(B" "$(C!Y(B" "$(C![(B" "$(C!a(B" "$(C!Z(B"
    "$(C!](B" "$(C!\(B" "$(C!b(B" "$(C!\(B" "$(C![(B" "$(C!`(B"
    "$(C!\(B"
    "$(C!l!h!i(B")
  "List of symbol string, used in Korean environment."
  :group 'w3m-symbol
  :type `(list ,@(make-list 46 'string)))

(defcustom w3m-symbol nil
  "List of symbol string."
  :group 'w3m-symbol
  :type `(choice
	  (const :tag "Auto detect" nil)
	  (variable :tag "w3m-default-symbol" w3m-default-symbol)
	  (variable :tag "w3m-Chinese-BIG5-symbol" w3m-Chinese-BIG5-symbol)
	  (variable :tag "w3m-Chinese-CNS-symbol" w3m-Chinese-CNS-symbol)
	  (variable :tag "w3m-Chinese-GB-symbol" w3m-Chinese-GB-symbol)
	  (variable :tag "w3m-Japanese-symbol" w3m-Japanese-symbol)
	  (variable :tag "w3m-Korean-symbol" w3m-Korean-symbol)
	  (list ,@(make-list 46 'string))))

(defun w3m-symbol ()
  (cond (w3m-symbol
	 (if (symbolp w3m-symbol)
	     (symbol-value w3m-symbol)
	   w3m-symbol))
	((let ((lang (or w3m-language
			 (and (boundp 'current-language-environment)
			      (symbol-value 'current-language-environment)))))
	   (when (boundp (intern (format "w3m-%s-symbol" lang)))
	     (symbol-value (intern (format "w3m-%s-symbol" lang))))))
	(t w3m-default-symbol)))

;;;###autoload
(defun w3m-replace-symbol ()
  (let ((symbol-list (w3m-symbol)))
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward "<_SYMBOL TYPE=\\([0-9]+\\)>" nil t)
	(let ((symbol (nth (string-to-number (match-string 1)) symbol-list))
	      (start (point))
	      end symbol-cnt)
	  (search-forward "</_SYMBOL>" nil t)
	  (setq end (match-beginning 0)
		symbol-cnt (/ (string-width (buffer-substring start end))
			      (string-width symbol)))
	  (goto-char start)
	  (delete-region start end)
	  (insert (apply 'concat (make-list symbol-cnt symbol))))))))

(provide 'w3m-symbol)

;;; w3m-symbol.el ends here
