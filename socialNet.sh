#!/bin/bash
clear
read -p "do you have a user? y/n " ans
if [ "$ans" = "n" ]; then
  echo "let's make one"
  sleep 1
  bash user_reg.sh
elif [ "$ans" = "y" ]; then
  clear
  echo "login:"
  read -p "username: " name
  read -p "password: " pass
  login=false
  userdata=$(grep "^$name:" userData.txt)
  Sname=$(echo "$userdata" | awk -F: '{print $1}')
  Spass=$(echo "$userdata" | awk -F: '{print $2}')
  if [ "$Sname" = "$name" ] && [ "$Spass" = "$pass" ]; then
    echo "welcome back $name!"
    sleep 1
	clear
    login=true
  else
    echo "incorrect username and/or password!"
    sleep 2
    clear
    exit 1
  fi
  op=0
  while true; do
    clear
    if [ "$login" = true ]; then
      clear
	echo "what now?"
      echo "1) read status of others"
      echo "2) write own"
      echo "3) my bio"
      echo "4) dm"
      echo "5) show user profiles"
      echo "6) exit"
      read -p "pls write number of option: " op
      case "$op" in
        "1")
          clear
          read -p "enter user's name/all: " user
          userstatus=$(grep "^$user:" userStatus.txt)
          if [ -z "$userstatus" ]; then
            echo "User not found!"
            if [ "$user" = "all" ]; then
              cat userStatus.txt
              read -p "press [ENTER]" press
            fi
          else
            echo "$userstatus"
            read -p "press [ENTER]" press
          fi
          ;;
        "2")
          read -p "write your thoughts: " status
          echo "" >> userStatus.txt
          echo "$name: \`\`$status\`\` ~$(date)" >> userStatus.txt
          echo "you said: \`\`$status\`\` at $(date)"
          read -p "press [ENTER]" press
          ;;
        "3")
          clear
          echo "1)my bio"
          echo "2)new bio"
          echo "3)other's bio"
          read -p "pls write number of option: " op2
          case "$op2" in
            "1")
              mbio=$(grep "^$name:" userBio.txt | tail -n 1)
              echo "$mbio"
              sleep 1
              read -p "press [ENTER]" press
              ;;
            "2")
              echo "your bio awaits:"
              read nbio
              echo "$name: $nbio" >> userBio.txt
              echo "updated!"
              sleep 1
              read -p "press [ENTER]" press
              ;;
            "3")
              read -p "enter user's name: " user
              Fuser=$(grep "^$user:" userBio.txt | tail -n 1)
              echo "$Fuser"
              sleep 1 && read -p "press [ENTER]" press
              ;;
            *)
              echo "invalid input"
              read -p "press [ENTER]" press
              ;;
          esac
          ;;
        "4")
          clear
          echo "1) dm list"
          echo "2) dm user"
          echo "3) back"
          read -p "insert option number: " op2
          case "$op2" in
            "1")
              clear
              awk -F: '{ print $1 }' userData.txt
              sleep 2 && read -p "press [ENTER]" press
              ;;
            "2")
              read -p "select user: " user
              if [ "$user" = "$name" ]; then
                echo "ERROR:this is your name" && sleep 1
              elif ! grep -q "^$user:" userData.txt; then
                echo "ERROR:user does not exist." && sleep 2
              else
                clear
                chat=$(echo -e "${user}\n${name}" | sort | tr -d '\n')Chat.txt
                if [ -f "$chat" ]; then
                  cat "$chat"
                else
                  echo "No previous messages."
                fi
                read -p "you: " ans
                echo "$name: $ans [$(date)]" >> "$chat"
              fi
              ;;
            "3")
              ;;
            *)
              echo "invalid input"
              read -p "press [ENTER]" press
              ;;
          esac
          ;;
        "5")
          clear
          echo "1) my profile"
          echo "2) other's profile"
          echo "3) back"
          read -p "insert number option:" op3
          case "$op3" in
            "1")
              clear
              mbio=$(grep "^$name:" userBio.txt | tail -n 1 | awk -F: '{print $2}' | sed 's/^ //')
              userstatus=$(grep "^$name:" userStatus.txt | sort -r | tail -n 10)
              echo "my name: $name"
              echo "my bio: $mbio"
              echo "latest status's: "
              echo "$userstatus"
              sleep 2 && read -p "press [ENTER]" press
              ;;
            "2")
              read -p "enter user's name: " user
              mbio=$(grep "^$user:" userBio.txt | tail -n 1 | awk -F: '{print $2}' | sed 's/^ //')
              clear
              echo "username: $user"
              echo "bio: $mbio"
              userstatus=$(grep "^$user:" userStatus.txt | sort -r | tail -n 10)
              echo "$userstatus"
              sleep 2 && read -p "press [ENTER]" press
              ;;
            "3")
              ;;
            *)
              echo "invalid input"
              read -p "press [ENTER]" press
              ;;
          esac
          ;;
        "6")
          echo "bye bye!"
          sleep 1
          clear
          exit 1
          ;;
        *)
          echo "incorrect output"
          read -p "press [ENTER]" press
          ;;
      esac
    fi
  done
else
  echo "ERROR:invalid output"
fi
