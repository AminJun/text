# Send Text via Bash
I got bored waiting for a program to finish, so in the meantime wrote this script to send text messages over the bash.  


# Set up 
First step you need to go to [TextBelt](https://textbelt.com) and pay for the service.
Then the website will give you a key that you need to replace it in the `text.sh` file as the `key` parameter. 
Then simply source this script or put it as in your `.bashrc` in linux or `.bash_profile` in mac. 

# Use
Simply use
```bash
	text +1202444333 Here write whatever you want to send. 
```

As in the phone number, it accepts phone numbers in the formats:
* +xx-xxx-xxx-xxxx
* +x-xxx-xxx-xxxx
* +xxx-xxx-xxxx


You can also use a phonebook to simplify your text messages as in 
```bash
text me Some message I want to send to myself.
```
So that it understand `me` as one of your contacts. Just see the `text.sh` to see how I did it and use the same approach.
