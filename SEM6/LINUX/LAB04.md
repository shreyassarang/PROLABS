# Script
```
#!/bin/sh
echo "Hello World" $HOME

echo "OS Type" $OSTYPE

echo "Username" $USER

echo "Home" $HOME

echo "Current Working Directory" $PWD

echo "Current Path Settings" $PATH

echo "Shell:" $SHELL

echo "Number of Logged in User are:" `who | wc -l`

echo "Memory Information" `du -H`

echo "Memory Information" `df -H`

echo "Mount" `mount`
whoami

pwd
```
