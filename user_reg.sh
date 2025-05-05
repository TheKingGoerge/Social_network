reg=false
while [ $reg = false ]; do
clear
pass=1
repass=0
while [ "$pass" != "$repass" ]; do
clear
echo "create user!"
    read -p "username: " name
    read -p "password: " pass
    read -p "retype password: " repass
    userdata=$(grep "^$name:" userData.txt)
    Sname=$(echo "$userdata" | awk -F: '{print $1}')
    if [ "$name" == "$Sname" ]; then
        echo "user already exists!" 
sleep 2
    elif [ "$pass" != "$repass" ]; then
        echo "passwords do not match!"
sleep 2
	elif [ $name == "invincible" ]; then
echo "⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⠀⣶⣶⡄⣶⣶⠀⣶⣶⠀⢲⣶⠀⣶⣦⠀⣶⣶⠀⣶⣶⠀⢠⣶⣶⣶⡄⢰⣶⡆⢰⣶⣶⣶⣦⠀⢲⣶⠀⠀⠀⠀⣶⣶⣶⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⣼⣿⡇⢸⣏⠀⢸⣿⠀⣼⣿⠀⣽⡏⠀⣽⣿⡇⢸⣿⠀⣿⡟⠛⣿⡇⠀⣿⡅⠀⣿⡟⠛⣿⡇⠸⣿⡆⠀⠀⠀⢹⣿⠛⢻⣷⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⣿⣿⡇⣿⡏⠀⢸⣿⢄⣿⡇⠀⣿⡇⠀⣿⣿⣷⢸⣿⠀⣿⣗⠀⣿⣏⠀⣿⡇⠀⣿⡇⠀⣿⡇⠀⣿⡇⠀⠀⠀⢸⣿⡀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⢰⣿⠃⢰⣿⣿⣷⣿⡇⠀⢸⣿⣾⣿⠀⠀⣿⡇⠀⣿⣿⣿⣜⣿⠀⣿⣏⠀⠈⠛⠀⣿⡇⠀⣻⣇⣴⣿⡇⠀⣿⡇⠀⠀⠀⠸⣿⣇⡀⠙⠃⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⢸⣿⢺⣿⣿⡇⠀⠸⣿⣿⡏⠀⠀⣿⡇⠀⣿⡇⣿⣿⣿⠀⣿⡿⠀⡀⠀⠀⣿⡗⠀⢿⣿⠿⣿⣆⠀⢿⣷⠀⠀⠀⠀⣿⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⣿⡿⠀⣼⣟⠸⣿⣿⠃⠀⠀⣿⣿⠃⠀⢀⣿⡇⠀⣿⡇⢸⣿⣿⠀⣿⣿⠀⣿⣶⠀⣿⣯⠀⣹⣿⠀⢸⣿⠀⢹⣿⠀⢹⣦⠀⣿⣷⠀⢿⣦⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⣿⡇⠈⣿⣿⠀⠀⠀⣿⣿⠀⠀⢨⣿⠇⢀⣿⡇⠈⣿⣿⠀⣿⣿⣤⣽⣿⠀⣿⣿⠀⢸⣿⣀⣸⣿⠀⢸⣿⣀⣸⣿⡄⢸⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⢸⣿⡇⢠⣿⣇⠀⣿⡿⠀⠀⠀⢿⠇⠀⠀⠸⠿⠇⠀⠿⠧⠀⠻⠟⠀⠘⠿⠿⠿⠋⠀⠹⠿⠆⠸⠿⠿⠿⠟⠀⠘⣿⣿⣿⣿⣇⠸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀"
sleep 5
clear
exit 1 
elif [ $name == "INVINCIBLE" ]; then
echo "⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⠀⣶⣶⡄⣶⣶⠀⣶⣶⠀⢲⣶⠀⣶⣦⠀⣶⣶⠀⣶⣶⠀⢠⣶⣶⣶⡄⢰⣶⡆⢰⣶⣶⣶⣦⠀⢲⣶⠀⠀⠀⠀⣶⣶⣶⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⣼⣿⡇⢸⣏⠀⢸⣿⠀⣼⣿⠀⣽⡏⠀⣽⣿⡇⢸⣿⠀⣿⡟⠛⣿⡇⠀⣿⡅⠀⣿⡟⠛⣿⡇⠸⣿⡆⠀⠀⠀⢹⣿⠛⢻⣷⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⣿⣿⡇⣿⡏⠀⢸⣿⢄⣿⡇⠀⣿⡇⠀⣿⣿⣷⢸⣿⠀⣿⣗⠀⣿⣏⠀⣿⡇⠀⣿⡇⠀⣿⡇⠀⣿⡇⠀⠀⠀⢸⣿⡀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⢰⣿⠃⢰⣿⣿⣷⣿⡇⠀⢸⣿⣾⣿⠀⠀⣿⡇⠀⣿⣿⣿⣜⣿⠀⣿⣏⠀⠈⠛⠀⣿⡇⠀⣻⣇⣴⣿⡇⠀⣿⡇⠀⠀⠀⠸⣿⣇⡀⠙⠃⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⢸⣿⢺⣿⣿⡇⠀⠸⣿⣿⡏⠀⠀⣿⡇⠀⣿⡇⣿⣿⣿⠀⣿⡿⠀⡀⠀⠀⣿⡗⠀⢿⣿⠿⣿⣆⠀⢿⣷⠀⠀⠀⠀⣿⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⣿⡿⠀⣼⣟⠸⣿⣿⠃⠀⠀⣿⣿⠃⠀⢀⣿⡇⠀⣿⡇⢸⣿⣿⠀⣿⣿⠀⣿⣶⠀⣿⣯⠀⣹⣿⠀⢸⣿⠀⢹⣿⠀⢹⣦⠀⣿⣷⠀⢿⣦⠀⠀⠀⠀⠀⠀⠀"
echo "⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⣿⡇⠈⣿⣿⠀⠀⠀⣿⣿⠀⠀⢨⣿⠇⢀⣿⡇⠈⣿⣿⠀⣿⣿⣤⣽⣿⠀⣿⣿⠀⢸⣿⣀⣸⣿⠀⢸⣿⣀⣸⣿⡄⢸⣿⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀" 
echo "⠀⠀⠀⠀⠀⠀⢸⣿⡇⢠⣿⣇⠀⣿⡿⠀⠀⠀⢿⠇⠀⠀⠸⠿⠇⠀⠿⠧⠀⠻⠟⠀⠘⠿⠿⠿⠋⠀⠹⠿⠆⠸⠿⠿⠿⠟⠀⠘⣿⣿⣿⣿⣇⠸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀"
sleep 5
clear
exit 1 
fi
done

if [ "$pass" = "$repass" ] && [ "$name" != "$Sname" ]; then
    echo "$name:$pass" >> userData.txt
    echo "User $name created successfully!"
sleep 2
    reg=true
bash socialNet.sh
fi
done
