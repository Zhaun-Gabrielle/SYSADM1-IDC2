![image](https://github.com/user-attachments/assets/e5a58287-125c-436d-b82b-cf9c1375fdbb)


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

![image](https://github.com/user-attachments/assets/4180934b-c593-4e85-bc78-024dcba9eaa1)


*Client-Pasion*

![image](https://github.com/user-attachments/assets/3f15fbb3-96a5-4eaf-9bd4-e76f322cf3b6)


2.  **Install Kerberos Server Packages on VM1 (Kerberos Server):**

    -   In VM1, install the Kerberos Key Distribution Center (KDC) and
        admin server:

*bash*

*sudo apt install krb5-kdc krb5-admin-server --y*

![image](https://github.com/user-attachments/assets/e5ee6ea8-fd4b-49e4-8c41-e51557858685)

3.  **Install Kerberos Client Package on VM2 (Kerberos Client):**

    -   In VM2, install the Kerberos client software:

*bash*

*sudo apt install krb5-user --y*

![image](https://github.com/user-attachments/assets/cae6cff8-654d-44b5-b5d8-3015c5b3f647)


-   During installation, when prompted, enter the Kerberos realm you
    plan to set up, e.g., MYLAB.LOCAL.

![image](https://github.com/user-attachments/assets/82b99618-6350-461c-9f3c-8ac071f2a03c)


Error encountered after installation

![image](https://github.com/user-attachments/assets/97cc8c7a-7c24-4085-8d67-f3078351145b)


**Step 2: Configure the Kerberos Server (VM1)**

1.  **Edit the Kerberos Configuration File:**

    -   Open /etc/krb5.conf for editing:

*bash*

*sudo nano /etc/krb5.conf*

![image](https://github.com/user-attachments/assets/d618e09b-e931-489a-a8de-52846e78fd9e)


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

![image](https://github.com/user-attachments/assets/407d3598-ae95-4e68-94ea-ae8ccc7a024c)


-   Save and close the file (Ctrl+X, then Y, and Enter to confirm).

2.  **Initialize the Kerberos Database:**

    -   Create the database for the Kerberos realm:

*bash*

*sudo krb5_newrealm*

![image](https://github.com/user-attachments/assets/68f6eb7e-b526-43c3-9901-397f816e587f)


-   You will be prompted to set a password for the Kerberos database.

![image](https://github.com/user-attachments/assets/9ea41018-5fbe-4956-83bf-881e1f9b7abc)


Databse successfully created

3.  **Start and Enable the Kerberos Services:**

    -   Start the KDC and admin server, and ensure they start
        automatically on boot:

*bash*

*sudo systemctl start krb5-kdc*

*sudo systemctl start krb5-admin-server*

*sudo systemctl enable krb5-kdc*

*sudo systemctl enable krb5-admin-server*

![image](https://github.com/user-attachments/assets/641274ed-5815-40b8-a3da-2cdc940564b5)


**Step 3: Set Up a Kerberos User Principal**

1.  **Create a New User Principal:**

    -   Run the following command to create a test user in the Kerberos
        realm:

*bash*

*sudo kadmin.local -q \"addprinc <testuser@MYLAB.LOCAL>\"*

![image](https://github.com/user-attachments/assets/c59124e4-b3f8-4d95-aba3-413d748ee2d2)


-   Set a password for testuser.

![image](https://github.com/user-attachments/assets/b043c6ac-8e8c-4797-bb24-c17d42e34deb)


2.  **Verify the User Principal:**

    -   To confirm the principal is created, list all principals:

*bash*

*sudo kadmin.local -q \"listprincs\"*

![image](https://github.com/user-attachments/assets/436177a9-1575-4ed0-a096-db24f5d6a0a5)


**Step 4: Configure the Kerberos Client (VM2)**

1.  **Edit the Kerberos Configuration File on VM2:**

    -   Open /etc/krb5.conf for editing on VM2:

*bash*

*sudo nano /etc/krb5.conf*

-   Set the default realm to MYLAB.LOCAL and point to the KDC and admin
    server on VM1. The configuration should match what you set on VM1.

![image](https://github.com/user-attachments/assets/995565e2-d160-4afe-b4e0-90a0c430f193)

same configuration as VM1

**Step 5: Test Kerberos Authentication**

1.  **Request a Kerberos Ticket for the User on VM2:**

    -   In the terminal on VM2, request a ticket for testuser:

*bash*

*kinit <testuser@MYLAB.LOCAL>*

![image](https://github.com/user-attachments/assets/e8858eb3-4094-4675-97d8-6e521865d3d4)


-   Enter the password you set for testuser.

2.  **Verify the Ticket:**

    -   Check if the ticket was issued by listing active Kerberos
        tickets:

*bash*

*klist*

-   You should see details about the ticket, such as the principal and
    expiration time, confirming successful Kerberos authentication.

![image](https://github.com/user-attachments/assets/8df54972-18e2-4a9c-9db1-57c3a8a25986)
