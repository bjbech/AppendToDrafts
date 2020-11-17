# AppendToDrafts

Create a Markdown style link from a Safari tab and append it to a Drafts.app list.

## Set Up Instructions
1. Place AppleScript in `~/Library/Scripts/Applications/Safari` to access from the Script Menu while in Safari
2. Copy Drafts.app draft UUID and replace it in the `x-callback-url` on line 8 where is says `UUID-TO-VALID-DRAFT`.
![image](https://user-images.githubusercontent.com/45978702/99462626-15f54100-2902-11eb-9a62-be0b4191f708.png)

## Notes 
- When the script is running, Safari will open the Drafts.app `x-callback-url` in a new tab. You will need to accept the message to allow "Do you want to allow this page to open "Drafts"?" before the `delay` command expires (currently set to 3 seconds) otherwise the tab will close without sending your data to Drafts.app.
![image](https://forums.getdrafts.com/uploads/default/original/2X/1/1a986630ca07440da6ea53adf0dc8f5ab7503e99.png)
