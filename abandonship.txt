### STAGE ZERO HUMAN SETUP ###

# github account private repo

### STAGE ZERO CONFIG MAPPING ######

##################################################################
# what do we need for a functional domain from the users? (KISS) #
##################################################################

# domain name
# initial cluster IPs
# Bitwarden Master Password
# Multi Factor config info

# minnowii (user provisioning file)
# firstname,lastname,mobile,groups,role(professor|gilligan),skipper-bool (skipper-bool will create a skipper account for this user separate from ldap user)

### STAGE ONE INSTALL ######

############################
# install rancher/rke here #
############################

# feed it list of node IPs of the initial cluster

###################
# install FreeIPA #
###################

# register initial cluster list with dns at this point

########################
# configure two factor #
########################

##########################
# install bitwarden here #
##########################

# script auto generates random passwords for initial users and writes to a file that git ignores
# master keepass password and local admins (skipper1,skipper2,skipper3,etc...)

######################### NTH
# install elkstack here #
#########################

########################
# install jenkins here #
########################

# jenkins form for provisioning machines
# jenkins form for provisioning users

##################### 
# install jira here #
#####################

# Figure out how to create groups and starter workflow for cirt response, should allow for internal IT work only. all members of each group have admin access within unit democratized.

########################
# install postfix here #
########################

# configure mail server easy mode

###########################
# install rocketchat here #
###########################

# configure rocket chat

################################
# install desktop as a service #
################################

# Container desktop as a service spins based on demand (skipper/non-skipper)

# create folder on desktop structure with links to all infrastructure tools setup

### STAGE TWO CHATOPPS PROVISIONING ###

# 1 chatopps room for provisioning users (non-priv) *note* after initialization only the way to provision more privilidged users is using skipper accounts

# 1 monitoring/alerting chatops room for K8s muted by default

# 1 monitorng/alerting chatops room for NODE OS/HW performance

# rooms instantiated for each group 



