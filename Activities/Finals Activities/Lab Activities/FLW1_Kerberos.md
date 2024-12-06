+----------------------------------+------------------------+----------+
| ![](vertopal_                    |                        |          |
| 117e9fab640948e7aca632f7364d85aa |                        |          |
| /media/image1.png){width="2.4in" |                        |          |
| height="0.5881944444444445in"}   |                        |          |
|                                  |                        |          |
| SCHOOL OF INFORMATION AND        |                        |          |
| TECHNOLOGY                       |                        |          |
+----------------------------------+------------------------+----------+
| NAME: Zhaun Gabrielle F. Pasion  | DATE PERFORMED:        | /50      |
|                                  | 14/11/24               |          |
+----------------------------------+------------------------+----------+
| Section: IDC2                    | DATE SUBMITTED:        |          |
|                                  | 14/11/24               |          |
+----------------------------------+------------------------+----------+

# SYSADM1 -- Kerberos Lab Activity: A step-by-step Guide

**Objective:**

Set up a basic Kerberos authentication system to understand how Kerberos
manages secure logins through ticket-based access.

**Setup Requirements:**

-   Two VMs in Oracle VM, both running a Linux distribution like Ubuntu
    or CentOS.

-   VM1: Kerberos Server

-   VM2: Kerberos Client

**Step 1: Initial Setup and Package Installation**

1.  **Update Packages on Both VMs:**

    -   Open a terminal on each VM and run:

*bash*

*sudo apt update && sudo apt upgrade --y*

***Server***

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image2.png){width="7.027083333333334in"
height="1.8930555555555555in"}

*Client-Pasion*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image3.png){width="7.027083333333334in"
height="1.2291666666666667in"}

2.  **Install Kerberos Server Packages on VM1 (Kerberos Server):**

    -   In VM1, install the Kerberos Key Distribution Center (KDC) and
        admin server:

*bash*

*sudo apt install krb5-kdc krb5-admin-server --y*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image4.png){width="7.027083333333334in"
height="4.96875in"}

3.  **Install Kerberos Client Package on VM2 (Kerberos Client):**

    -   In VM2, install the Kerberos client software:

*bash*

*sudo apt install krb5-user --y*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image5.png){width="7.027083333333334in"
height="4.377083333333333in"}

-   During installation, when prompted, enter the Kerberos realm you
    plan to set up, e.g., MYLAB.LOCAL.

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image6.png){width="7.027083333333334in"
height="2.8159722222222223in"}

Error encountered after installation

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image7.png){width="7.027083333333334in"
height="1.382638888888889in"}

**Step 2: Configure the Kerberos Server (VM1)**

1.  **Edit the Kerberos Configuration File:**

    -   Open /etc/krb5.conf for editing:

*bash*

*sudo nano /etc/krb5.conf*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image8.png){width="6.440143263342082in"
height="4.213873578302712in"}

-   Set the realm as MYLAB.LOCAL. You should also specify the KDC and
    admin server as VM1's hostname or IP address:

ini

\[libdefaults\]

default_realm = MYLAB.LOCAL

\[realms\]

MYLAB.LOCAL = {

kdc = \<VM1_IP_or_hostname\>

admin_server = \<VM1_IP_or_hostname\>

}

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image9.png){width="6.6579779090113735in"
height="4.294557086614173in"}

-   Save and close the file (Ctrl+X, then Y, and Enter to confirm).

2.  **Initialize the Kerberos Database:**

    -   Create the database for the Kerberos realm:

*bash*

*sudo krb5_newrealm*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image10.png){width="6.59879593175853in"
height="2.020265748031496in"}

-   You will be prompted to set a password for the Kerberos database.

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image11.png){width="7.027083333333334in"
height="3.4756944444444446in"}

Databse successfully created

3.  **Start and Enable the Kerberos Services:**

    -   Start the KDC and admin server, and ensure they start
        automatically on boot:

*bash*

*sudo systemctl start krb5-kdc*

*sudo systemctl start krb5-admin-server*

*sudo systemctl enable krb5-kdc*

*sudo systemctl enable krb5-admin-server*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image12.png){width="7.027083333333334in"
height="2.0590277777777777in"}

**Step 3: Set Up a Kerberos User Principal**

1.  **Create a New User Principal:**

    -   Run the following command to create a test user in the Kerberos
        realm:

*bash*

*sudo kadmin.local -q \"addprinc <testuser@MYLAB.LOCAL>\"*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image13.png){width="7.027083333333334in"
height="0.7833333333333333in"}

-   Set a password for testuser.

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image14.png){width="7.027083333333334in"
height="1.2868055555555555in"}

2.  **Verify the User Principal:**

    -   To confirm the principal is created, list all principals:

*bash*

*sudo kadmin.local -q \"listprincs\"*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image15.png){width="6.89679571303587in"
height="1.885680227471566in"}

**Step 4: Configure the Kerberos Client (VM2)**

1.  **Edit the Kerberos Configuration File on VM2:**

    -   Open /etc/krb5.conf for editing on VM2:

*bash*

*sudo nano /etc/krb5.conf*

-   Set the default realm to MYLAB.LOCAL and point to the KDC and admin
    server on VM1. The configuration should match what you set on VM1.

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image16.png){width="7.027083333333334in"
height="4.545833333333333in"}\
same configuration as VM1

**Step 5: Test Kerberos Authentication**

1.  **Request a Kerberos Ticket for the User on VM2:**

    -   In the terminal on VM2, request a ticket for testuser:

*bash*

*kinit <testuser@MYLAB.LOCAL>*

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image17.png){width="7.027083333333334in"
height="0.4111111111111111in"}

-   Enter the password you set for testuser.

2.  **Verify the Ticket:**

    -   Check if the ticket was issued by listing active Kerberos
        tickets:

*bash*

*klist*

-   You should see details about the ticket, such as the principal and
    expiration time, confirming successful Kerberos authentication.

![](vertopal_117e9fab640948e7aca632f7364d85aa/media/image18.png){width="7.027083333333334in"
height="1.3520833333333333in"}
