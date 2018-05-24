#!/bin/bash
script_name=gitglobal
tekst="Bad arguments!
To show more info use: \'$sript_name help\'"
if [ $# -eq 0 ];then
  echo "$text"
elif [ $1 == "help" ];then
  text="on all git repo sub_dir of given directory"
  echo "Help for script $script_name
 $script_name allows us to controll repositories in git system

 Syntax:
$script_name path option [help]

 Available options:
 	push - call \'git push\' $text
	pull - call \'git pull\' $text
	add - call \'git add .\' $text
	commit - call \'git commit -a\' $text
	show - call \'git show\' $text
  status - call \'git status\' $text"
elif [ $# -ne 2 ];then
  echo "$text"
elif [ $# -eq 1 -a $1 == "help" ];then
  echo "$text"
elif [ $# -eq 2 -a $1 != "help" ];then
  if [ $2 == "push" -o $2 == "pull" -o $2 == "add" -o $2 == "commit" -o $2 == "status" -o $2 == "show" ];then
    var=$2
    case $var in
      "push") command="git push" ;;
      "pull") command="git pull" ;;
      "add") command="git add ." ;;
      "commit") command="git commit -a" ;;
      "status") command="git status" ;;
      "show") command="git show" ;;
      *) echo "Bad option for script"
    esac
    for dir in `find $1 -mindepth 1 -maxdepth 1 -type d -exec find {} -name .git -type d \;`
    do
      if [ ! -e "$dir/.git"  ];then
        cd $dir/../
        echo "$command "`pwd`
        $command
        cd ..

      fi
    done
  else
    echo "$text"
  fi
else
  echo "Unknown error"
fi
