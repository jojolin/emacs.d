# Personal config #

This config is based on purcell's config.

## Modification ##

1. Add evil support.
   evil-leader : add leader key.
   evil-surround.
   evil-nerd-commenter : comment.
   evil-matchit : match praredit.
   evil-visualstar.
   evil-escape : escape other state to normal state.
   evil-snipe : enable 2-char find.
   evil-tutor : evil tutor.
   *Detailed in .emacs.d/lisp/init-evil.el.*

2. Add el-get support to install package.
   Add .emacsd./elpa/ to the load path for manually installed package.
   *Detailed in .emacs.d/lisp/init-el-get.el.*

3. Add fully python develop environment.
   jedi : performed as python backend.
   ein : communicate with ipython notebook.
   pep8 and pylint : style format.
   pylookup : doc search.
   *Detailed in .emacs.d/lisp/init-python.el.*

4. Other programming supports.
   projectile : support project management
   flx-ido.
   yasnippet : template.

5. misc.
   Add more ram for emacs : (setq gc-cons-threshold 20000000)
   *Detailed in .emacs.d/init.el.*
