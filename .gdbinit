# Written using GNU gdb (GDB) Fedora 12.1-1

# auto download debuginfo
set debuginfod enabled on
# saves the command history between sessions
set history save on
# if the screen is too long, you won't need to press y to scroll it
set pagination off
# displays values of classes, structs etc. nicely
set print pretty on
# you won't need to confirm commands
set confirm off

# Setup a defaut tui
tui enable
layout split
