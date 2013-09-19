if isdirectory($HOME.'/tmp')  " if my personal tmp directory exists
   if isdirectory($HOME.'/tmp/vim') == 0
      :silent !mkdir ~/tmp/vim >/dev/null 2>&1 
   endif
   if isdirectory($HOME.'/tmp/vim')
      set backup              " turn backups back on
      set backupdir=~/tmp/vim " set the backup directory to ~/tmp/vim
      set dir=~/tmp/vim
   endif
endif
