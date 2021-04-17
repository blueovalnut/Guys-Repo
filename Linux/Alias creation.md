Creating Aliases

Creating aliases can create micro time savings but based on the freqwuency of usage could add up to considerable time and convenience savings over the long run. 

You can either add commands directly inside `~/.bashrc` using `nano`, or you can use output redirection to append them to the `~/.bashrc` file.


Start by creating a backup copy of your `~/.bashrc` file by running `cp ~/.bashrc ~/.bashrc.bak`

1. Create an alias in your `~/.bashrc` file for `ls -a`.
    - Type `echo "alias lsa='ls -a'" >> ~/.bashrc`

        - `alias` indicated that the following code is an alias.
        - `lsa=` is the name of the new command. We can use anything we want, but we want to be careful not to use a command that already exists.

    - Note that we have to use a mixture of double and single quotes (`""` and `''`) here to get this command to work correctly.

        - `'ls -a'` is the command we are creating the alias for.

        - The echo command is wrapped in double quotes (`""`) and the alias is wrapped in single quotes (`''`).

    - `alias lsa='ls -a'` is the only line we need to add to our `~/.bashrc file`. If we wanted to add this directly to the `bashrc` file, we could use `echo` and redirection to do it in one line.

    - Run `echo "alias lsa='ls -a'" >> ~/.bashrc`
        
        - We could chain it together with `&& source ~/.bashrc` to automatically reload the file and enable the new alias.
        
        - Example: `echo "alias lsa='ls -a'" >> ~/.bashrc && source ~/.bashrc`



2. Create an alias in your `~/.bashrc` file for `cd ~/Documents`, `cd ~/Downloads`, `cd /etc`.

    Use the following command structure `alias docs='cd ~/Documents'` for each directory.

    - `~/Documents`:
        - Run `echo "alias docs='cd ~/Documents'" >> ~/.bashrc`

    - `~/Downloads`:
        - Run `echo "alias dwn='cd ~/Downloads'" >> ~/.bashrc`

    - `~/etc`:
        - Run `echo "alias etc='cd /etc'" >> ~/.bashrc`


These are the only lines needed for the `~/.bashrc` file.

Take a moment to see what's happening to the `~/.bashrc` file.

- Run `tail -4 ~/.bashrc`

    You should get output similar to:

    ```bash
    alias lsa='ls -a'
    alias docs='cd ~/Documents'
    alias dwn='cd ~/Downloads'
    alias etc='cd /etc'
    ```