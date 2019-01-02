

Basic Shell Commands

Jeremy Sanders

October 2011

    acroread - Read or print a PDF file.

    cat - Send a file to the screen in one go. Useful for piping to other programs

    cat file1                       # list file1 to screen
    cat file1 file2 file3 > outfile # add files together into outfile
    cat *.txt > outfile             # add all .txt files together
    cat file1 file2 | grep fred     # pipe files

    cc - Compile a C program

    cc test1.c                     # compile test1.c to a.out
    cc -O2 -o test2.prog test2.c   # compile test2.c to test2.prog

    cd - Change current directory

    cd                     # go to home directory
    cd ~/papers            # go to /home/user/papers
    cd ~fred               # go to /home/fred
    cd dir                 # go to directory (relative)
    cd /dir1/dir2/dir3...  # go to directory (absolute)
    cd -                   # go to last directory you were in

    cp - Copy file(s)

    cp file1 file2                      # copy file1 to file2
    cp file1 directory                  # copy file1 into directory
    cp file1 file2 file3 ... directory  # copy files into directory
    cp -R dir1 dir2/  # copy dir1 into dir2 including subdirectries
    cp -pR dir1 dir2/ # copy directory, preserving permissions

    date - Shows current date

    > date
    Sat Aug 31 17:18:53 BST 2002

    dvips - Convert a dvi file to PostScript

    dvips document.dvi        # convert document.dvi to document.ps
    dvips -Ppdf document.dvi  # convert to ps, for conversion to pdf

    emacs - The ubiquitous text editor

    emacs foo.txt             # open file in emacs
    emacsclient foo.txt       # open file in existing emacs (need to use
                              # M-x start server first)

    file - Tells you what sort of file it is

    > file temp_70.jpg 
    temp_70.jpg: JPEG image data, JFIF standard 1.01,
    resolution (DPI), 72 x 72

    firefox - Start Mozilla Firefox

    f77/f90 - Compile a Fortran 77/99 program

    f77 -O2 -o testprog testprog.f

    gedit - Gnome text editor

    gnuplot - A plotting package.

    grep - Look for text in files. List out lines containing text (with filename if more than one file examined).

    grep "hi there" file1 file2 ... # look for 'hi there' in files
    grep -i "hi there" filename     # ignore capitals in search
    cat filename | grep "hi there"  # use pipe
    grep -v "foo" filename          # list lines that do not include foo

    gtar - GNU version of the tar utility (also called tar on Linux). Store directories and files together into a single archive file. Use the normal tar program to backup files to a tape. See info tar for documentation.

    gtar cf out.tar dir1    # put contents of directory into out.tar
    gtar czf out.tar.gz dir1 # write compressed tar, out.tar.gz
    gtar tf in.tar          # list contents of in.tar
    gtar tzf in.tar.gz      # list contents of compressed in.tar.gz
    gtar xf in.tar          # extract contents of in.tar here
    gtar xzf in.tar.gz      # extract compressed in.tar.gz
    gtar xf in.tar file.txt ... # extract file.txt from in.tar

    gv - View a Postscript document with Ghostscript.

    gzip / gunzip - GNU Compress files into a smaller space, or decompress .Z or .gz files.

    gzip file.fits          # compresses file.fits into file.fits.gz
    gunzip file.fits.gz     # recovers original file.fits
    gzip *.dat              # compresses all .dat files into .dat.gz
    gunzip *.dat.gz         # decompresses all .dat.gz files into .dat
    program | gzip > out.gz # compresses program output into out.gz
    program | gunzip > out  # decompresses compressed program output

    info - A documentation system designed to replace man for GNU programs (e.g. gtar, gcc). Use cursor keys and return to go to sections. Press b to go back to previous section. A little hard to use.

    info gtar               # documentation for gtar

    kill - Kill, pause or continue a process. Can also be used for killing daemons.

    > ps -u jss
    ...
     666  pts/1        06:06:06  badprocess 
    > kill 666        # this sends a ``nice'' kill to the
                      # process. If that doesn't work do
    > kill -KILL 666   # (or equivalently)
    > kill -9 666     # which should really kill it!

    > kill -STOP 667  # pause (stop) process 
    > kill -CONT 667  # unpause process

    latex - Convert a tex file to dvi

    logout - Closes the current shell. Also try ``exit''.

    lp - Sends files to a printer

    lp file.ps  # sends postscript file to the default printer
    lp -dlp2 file.ps           # sends file to the printer lp2
    lp -c file.ps    # copies file first, so you can delete it
    lpstat -p lp2         # get status and list of jobs on lp2
    cancel lp2-258                  # cancel print job lp2-258 

    lpr -Plp2 file.ps                    # send file.ps to lp2
    lpq -Plp2                        # get list of jobs on lp2
    lprm -Plp2 1234                   # delete job 1234 on lp2

    ls - Show lists of files or information on the files

    ls file     # does the file exist?
    ls -l file  # show information about the file
    ls *.txt    # show all files ending in .txt
    ls -lt      # show information about all files in date order
    ls -lrt     # above reversed in order
    ls -a       # show all files including hidden files
    ls dir      # show contents of directory
    ls -d dir   # does the directory exist?
    ls -p       # adds meaning characters to ends of filenames
    ls -R       # show files also in subdirectories of directory
    ls -1       # show one file per line

    man - Get instructions for a particular Unix command or a bit of Unix. Use space to get next page and q to exit.

    man man      # get help on man
    man grep     # get help on grep
    man -s1 sort # show documentation on sort in section 1

    more - Show a file one screen at a time

    more file                # show file one screen at a time
    grep 'frog' file | more  # Do it to output of other command

    mv - Move file(s) or rename a file

    mv file1 file2                     # rename file1 to file2
    mv dir1 dir2                       # rename directory dir1 to dir2
    mv file1 file2 file3 ... directory # move files into directory

    nano - very simple text editor. Warning - this program can introduce extra line breaks in your file if the screen is too narrow!

    nice - Start a process in a nice way. Nice levels run from -19 (high priority) to 19 (low priority). Jobs with a higher priority get more CPU time. See renice for more detail. You should probably be using the grid-engine to run long jobs.

    nice +19 myjob1   # run at lowest priority
    nice +8 myjob2    # run at lowish priority

    openoffice.org - a free office suite available for Linux/Unix, Windows and Mac OS X.

    passwd - change your password

    pine - A commonly used text-based mail client. It is now called alpine. Allows you to send and receive emails. Configuration options allow it to become quite powerful. Other alternatives for mail are mozilla mail and mutt, however I suggest you stick to alpine or thunderbird.

    printenv - Print an environment variable in tcsh

    setenv MYVARIABLE Fred
    printenv MYVARIABLE
    printenv # print all variables

    ps - List processes on system

    > ps -u jss          # list jss's processes
      934 pts/0    00:00:00 bash
    ^^^^^ ^^^^^    ^^^^^^^^ ^^^^^^^
    PID   output   CPU time name
    > ps -f      # list processes started here in full format
    > ps -AF     # list all processes in extra full format
    > ps -A -l            # list all processes in long format
    > ps -A | grep tcsh   # list all tcsh processes

    pwd - Show current working directory

    > pwd
    /home/jss/writing/lecture

    quota - Shows you how much disk space you have left

    > quota -v
    ...

    renice - Renice a running process. Make a process interact better with other processes on the system (see top to see how it is doing). Nice levels run from -19 (high priority) to 19 (low priority). Only your own processes can be niced and they can only be niced in the positive direction (unless you are root). Normal processes start at nice 0.

    > ps -u jss | grep bigprocess      # look for bigprocess
     1234 pts/0    99:00:00 bigprocess
    > renice 19 1234                   # renice PID 1234 to 19

    rm - Delete (remove) files

    rm file1     # delete a file (use -i to ask whether sure)
    rm -r dir1   # delete a directory and everything in it (CARE!)
    rm -rf dir1  # like above, but don't ask if we have a -i alias

    rmdir - Delete a directory if it is empty (rm -r dirname is useful if it is not empty)

    rmdir dirname

    staroffice - An office suite providing word processor, spreadsheet, drawing package. See Users' Guide on how to install this. This is a commercial version of the openoffice office package - use openoffice.org on linux.

    setenv - Set an environment variable in tcsh.

    setenv MYVARIABLE Fred
    echo Hi there $MYVARIABLE

    tar - Combine files into one larger archive file, or extract files from that archive (same as gtar on Linux).

    tar cvf /dev/rmt/0 ./      # backup cwd into tape
    tar tvf /dev/rmt/0         # list contents of tape
    tar xvf /dev/rmt/0         # extract contents of tape

    thunderbird - Start mozilla thunderbird.

    top - Interactively show you the ``top'' processes on a system - the ones consuming the most computing (CPU) time. Press the ``q'' key in top to exit. Press the ``k'' key to kill a particular process. Press ``r'' to renice a process.

About this document ...
Basic Shell Commands

This document was generated using the LaTeX2HTML translator Version 2008 (1.71)

Copyright © 1993, 1994, 1995, 1996, Nikos Drakos, Computer Based Learning Unit, University of Leeds.
Copyright © 1997, 1998, 1999, Ross Moore, Mathematics Department, Macquarie University, Sydney.

The command line arguments were:
latex2html -split 0 -font_size 10pt -no_navigation commands_basic.tex

The translation was initiated by Jeremy Sanders on 2011-10-02
Jeremy Sanders 2011-10-02

