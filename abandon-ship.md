Hey if you're reading this, these steps are best performed by a linux administrator, or someone with
some linux experience, but this guide is written for someone with little to no linux experience.
Try to follow the instructions to the best of your ability.  If you get stuck, shoot us a message in
GitHub or via email and we'll do what we can to help.

This "infrastructure in a box" is intended for use during a cyberattack where most or all of your
normal infrastructure is down, unavailable, or compromised.  This will provide all specified users
with a user account, password vault, email, chat program, and ticketing system. The users credentials
for login are stored in the password vault.  All users' vault passwords will be written to the
/tmp/userinit.txt on the k3os server you will stand up.  Distribute them to the users so they can
get their username and password to log into email, chat and ticketing system. All accounts will be
formatted firstname.lastname and email addresses firstname.lastname@domain.

It's a good idea, while you are performing this install to download minnow-template.csv from this
repository and get it to your incident response team. They can start building a list of users, that
will need access to this environment, while you do the important work! ^_^

Now on to the install!

# INSTALL STEPS

1. Breathe!  It's going to be ok. This too shall pass.

2. Find a nice beefy pizza box server that's now collecting dust in your shattered husk of a
datacenter.  Make sure it has 8 or more cpu cores, 16 or more GB of ram and we recommend 100GB or
more of disk space.

3. Download the latest k3os .iso for your architecture (most likely k30s-amd64.iso).
You can download the .iso from this link https://github.com/rancher/k3os/releases/

* OPTIONAL:  If you're super cool.  Remaster the ISO with a `k3os.password=<your-password>` kernel parameter in the grub config and skip steps 5 through 8.

4. When the system boots it will display the grub boot loader with some options, you
will want to use the option to install k3os.  You will be prompted for a few options,
if you don't know what those options do it's best to leave them set to default.

5. After the install completes reboot the server.

6. When the system reboots the grub loader will be displayed again with a countdown.
Hit the "e" key to go into edit mode.

7. At the line that starts with linux put `k3os.password=<your-password>` at the end of
the line.

8. Hit the `F10` key to boot into k3os.

9. Log in to the server with the user `rancher` and the password you created in step 3 or step 7.

10. Change directory to /var with the following command:
* `cd /var`

11. wget repo _(Needs work)_

12. run sos setup script with the following command:
* `./operation-lifeboat/scripts/helm-install.sh`

13. Check that helm is installed by running the following command:
* `helm help`

NOTE: This should display the helm help page, if it doesn't the sos.sh script from step 12 did
not run properly.

14. Retrieve `minnow-template.csv` from your incident response team.

15. Rename the returned template from step 14 to `minnowii.csv` and put it back in the `/var`
directory. # break out into more steps for file transfer.

16. Run bootstrap.sh with the following command:
* `./bootstrap.sh --domain-name "your-domain"`

EXAMPLE: `./bootstrap.sh --domain-name firestorm.org`

17. Breathe!  You've completed the setup, go to your vault and get back in the fight.
