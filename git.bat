@ECHO OFF

/home/marek/bin/git_wrapper/worker.sh %*

:start
IF EXIST "/home/marek/bin/git_wrapper/lock.txt" (
    TYPE "/home/marek/bin/git_wrapper/out.txt"
    DEL "/home/marek/bin/git_wrapper/out.txt"
    DEL "/home/marek/bin/git_wrapper/lock.txt"
) ELSE (
    ping -n 1
    GOTO start
)