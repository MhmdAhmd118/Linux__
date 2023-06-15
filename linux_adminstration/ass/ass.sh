#!/bin/bash
touch address_book.txt
function display_menu()
{
	clear
	echo ---------------------------------------
	echo        welcome to my address book
	echo                  GWaily
	echo ---------------------------------------
	
	echo 1-list
	echo 2-add
	echo 3-remove
	echo 4-edit
	echo 5-quit
	echo selcet one of this options :
	read choice 
}
function list()
{
	clear
	echo Contacts in address book:
	cat address_book.txt
	read -p "Press enter to continue"
}
function add()
{
	clear
	echo add new contact 
	echo enter the name :
	read name
	echo enter the phone number 
	read phone
	echo "$name , $phone">> address_book.txt
	echo contact added successfully
	read -p "press enter to continue"
	
}
function edit()
{
	clear 
	echo edit a contact
	echo enter the name of contact to edit 
	read name 
	echo enter the new name 
	read new_name
	echo enter tne new phone
	read new_phone
	sed -i "s/^$name ,.*/$new_name ,$new_phone/" "address_book.txt"
	echo contact edited successfully
	read -p "press enter to continue"
}
function remove()
{
	clear 
	echo remove a contact
	echo enter the name of contact to remove 
	read name 
	sed -i "/^$name , /d" "address_book.txt"
	echo contact removed successfully
	read -p "press enter to continue"
}
function quit()
{
	clear
	echo GoodBye
	exit;
}
while true 
do 
display_menu
case $choice in
    1)
        list
        ;;
    2)
        add
        ;;
    3)
        remove
        ;;
    4)
        edit
        ;;
    5)
    	quit
    	;;    
    *)
        echo "Invalid choice"
        ;;
esac

done
 
