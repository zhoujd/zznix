Port Forwarding
===============

## Using the Command Prompt for Port Forwarding

```
Here is a step-by-step guide on how to use the command prompt for port forwarding in Windows:

Step 1: Open the Command Prompt
Click on the Start menu, type “cmd” in the search field, and press Enter. This will open the Command Prompt window.

Step 2: Obtain the IP address of the device
Type “ipconfig” in the Command Prompt window and press Enter. Look for the “IPv4 Address” under your network adapter, and note down the IP address.

Step 3: Create a port forwarding rule
Type the following command and press Enter:

“netsh interface portproxy add v4tov4 listenport=8080 listenaddress=192.168.1.10 connectport=8080 connectaddress=192.168.1.10”

Step 4: Verify the port forwarding rule
Type the following command and press Enter:

“netsh interface portproxy show all”

This command will display a list of all port forwarding rules currently active on the network. Check if the rule you created is listed.

Step 5: Close the Command Prompt
Type “exit” and press Enter to close the Command Prompt window.

That’s it! You have successfully used the Command Prompt for port forwarding in Windows.
```

## Configuring Windows Firewall for Port Forwarding

```
Here is a step-by-step guide on how to configure Windows Firewall for port forwarding:

Step 1: Open Windows Firewall Settings
Click on the Start menu, type “firewall” in the search field, and select “Windows Defender Firewall.”

Step 2: Click on “Advanced Settings”
In the left sidebar, click on “Advanced Settings.”

Step 3: Create an Inbound Rule
In the left sidebar, click “Inbound Rules” and “New Rule” in the right sidebar.

Step 4: Choose Port Rule
Select “Port” and click “Next.”

Step 5: Configure the Port
Select the type of port you need to configure: TCP or UDP. Enter the port number(s) you want to forward in the “Specific local ports” field.

Step 6: Choose Action
Select “Allow the connection” and click “Next.”

Step 7: Choose Profiles
Select which profiles the rule should apply to (Domain, Private, Public) and click “Next.”

Step 8: Name and Save the Rule
Give the rule a name and click “Finish.”

Step 9: Verify the Rule
You should be able to see the new rule listed in the Inbound Rules list.
```

## Netsh commands for Interface Portproxy

```
## https://technet.microsoft.com/es-es/library/cc731068.aspx
## Add forwarding
netsh interface portproxy add v4tov4 listenport=4422 listenaddress=192.168.1.111 connectport=80 connectaddress=192.168.0.33

## Query forwarding
netsh interface portproxy show all

Listen on ipv4:             Connect to ipv4:

Address         Port        Address         Port
--------------- ----------  --------------- ----------
192.168.10.104  4422        192.168.56.102  22

## Remove forwarding
netsh interface portproxy delete v4tov4 listenport=4422 listenaddress=192.168.1.111
```
