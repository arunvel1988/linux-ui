#!/bin/bash

echo "======================================================="
echo "VI / VIM EDITOR – COMPLETE DETAILED GUIDE"
echo "======================================================="
echo

###############################################################################
# 1. What is vi / vim
###############################################################################
echo "1) What is vi / vim?"
echo "-------------------------------------------------------"
echo "vi  → original Unix visual editor"
echo "vim → VI Improved (default on most Linux systems)"
echo
echo "Used for:"
echo "- Editing config files"
echo "- Writing shell scripts"
echo "- Editing code on remote servers"
echo
echo "-------------------------------------------------------"

###############################################################################
# 2. Opening vi
###############################################################################
echo "2) Opening vi"
echo "-------------------------------------------------------"
echo "Command:"
echo "vi filename"
echo
echo "Examples:"
echo "vi test.txt"
echo "vi /etc/hosts"
echo
echo "-------------------------------------------------------"

###############################################################################
# 3. vi MODES (VERY IMPORTANT)
###############################################################################
echo "3) vi MODES (MOST IMPORTANT CONCEPT)"
echo "-------------------------------------------------------"
echo "NORMAL MODE   → default mode (commands)"
echo "INSERT MODE   → typing text"
echo "COMMAND MODE  → save, quit, search"
echo
echo "ESC key ALWAYS returns to NORMAL mode"
echo
echo "-------------------------------------------------------"

###############################################################################
# 4. Insert Mode commands
###############################################################################
echo "4) INSERT MODE commands"
echo "-------------------------------------------------------"
echo "i   → insert before cursor"
echo "I   → insert at beginning of line"
echo "a   → append after cursor"
echo "A   → append at end of line"
echo "o   → open new line below"
echo "O   → open new line above"
echo
echo "Press ESC to exit insert mode"
echo
echo "-------------------------------------------------------"

###############################################################################
# 5. Saving and quitting
###############################################################################
echo "5) Save & Quit commands (COMMAND MODE)"
echo "-------------------------------------------------------"
echo ":w     → save"
echo ":q     → quit"
echo ":wq    → save and quit"
echo ":q!    → quit without saving"
echo ":x     → save and exit"
echo
echo "-------------------------------------------------------"

###############################################################################
# 6. Cursor movement
###############################################################################
echo "6) Cursor movement (NORMAL MODE)"
echo "-------------------------------------------------------"
echo "h → left"
echo "l → right"
echo "j → down"
echo "k → up"
echo
echo "w → next word"
echo "b → previous word"
echo "0 → start of line"
echo "$ → end of line"
echo "gg → first line"
echo "G  → last line"
echo
echo "-------------------------------------------------------"

###############################################################################
# 7. Deleting text
###############################################################################
echo "7) Deleting text"
echo "-------------------------------------------------------"
echo "x   → delete character"
echo "dw  → delete word"
echo "dd  → delete line"
echo "D   → delete till end of line"
echo "dG  → delete till end of file"
echo
echo "-------------------------------------------------------"

###############################################################################
# 8. Copy & Paste (Yank & Put)
###############################################################################
echo "8) Copy & Paste"
echo "-------------------------------------------------------"
echo "yy  → copy (yank) line"
echo "yw  → copy word"
echo "p   → paste after cursor"
echo "P   → paste before cursor"
echo
echo "-------------------------------------------------------"

###############################################################################
# 9. Undo & Redo
###############################################################################
echo "9) Undo & Redo"
echo "-------------------------------------------------------"
echo "u      → undo"
echo "Ctrl+r → redo"
echo
echo "-------------------------------------------------------"

###############################################################################
# 10. Search
###############################################################################
echo "10) Search"
echo "-------------------------------------------------------"
echo "/word   → search forward"
echo "?word   → search backward"
echo "n       → next match"
echo "N       → previous match"
echo
echo "-------------------------------------------------------"

###############################################################################
# 11. Replace (VERY IMPORTANT)
###############################################################################
echo "11) Replace / Substitute"
echo "-------------------------------------------------------"
echo ":s/old/new       → replace in current line"
echo ":s/old/new/g     → replace all in line"
echo ":%s/old/new/g    → replace in whole file"
echo ":%s/old/new/gc   → confirm each replace"
echo
echo "-------------------------------------------------------"

###############################################################################
# 12. Visual mode
###############################################################################
echo "12) Visual mode"
echo "-------------------------------------------------------"
echo "v   → character selection"
echo "V   → line selection"
echo "Ctrl+v → block selection"
echo
echo "-------------------------------------------------------"

###############################################################################
# 13. Line numbers
###############################################################################
echo "13) Line numbers"
echo "-------------------------------------------------------"
echo ":set number      → show line numbers"
echo ":set nonumber    → hide line numbers"
echo
echo "-------------------------------------------------------"

###############################################################################
# 14. Working with multiple files
###############################################################################
echo "14) Multiple files"
echo "-------------------------------------------------------"
echo ":e file2.txt     → open another file"
echo ":w file2.txt     → save as new file"
echo ":r file2.txt     → read another file"
echo
echo "-------------------------------------------------------"

###############################################################################
# 15. Real admin examples
###############################################################################
echo "15) Real admin usage"
echo "-------------------------------------------------------"
echo "Edit DNS:"
echo "vi /etc/resolv.conf"
echo
echo "Edit users:"
echo "vi /etc/passwd"
echo
echo "Edit cron:"
echo "crontab -e"
echo
echo "-------------------------------------------------------"

###############################################################################
# Summary
###############################################################################
echo "======================================================="
echo "VI / VIM – KEY RULES"
echo "-------------------------------------------------------"
echo "ESC is your best friend"
echo "Modes matter"
echo "Practice daily"
echo "Used everywhere in Linux"
echo "======================================================="
