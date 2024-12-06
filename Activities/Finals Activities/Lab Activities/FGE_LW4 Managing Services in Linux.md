+----------------------------------+------------------------+----------+
| ![](vertopal_                    |                        |          |
| c5088e25e02e4e7ba4ab26b43601480f |                        |          |
| /media/image1.png){width="2.4in" |                        |          |
| height="0.5881944444444445in"}   |                        |          |
|                                  |                        |          |
| SCHOOL OF INFORMATION AND        |                        |          |
| TECHNOLOGY                       |                        |          |
+----------------------------------+------------------------+----------+
| NAME: Zhaun Gabrielle F. Pasion  | DATE PERFORMED:        |          |
|                                  | 12/9/24                |          |
+----------------------------------+------------------------+----------+
| Section: IDC2                    | DATE SUBMITTED:        |          |
|                                  | 12/9/24                |          |
+----------------------------------+------------------------+----------+

# SYSADM1 -- Managing Services in Linux

# Requirement: 

-   A virtual machine running Linux

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image2.png){width="4.135416666666667in"
height="1.8020833333333333in"}

Complete this lab as follows:

1.  Use the service --status-all command to list all active and inactive
    services.

List down active and inactive services in the table below. Provide five
(5) services for each column.

  -----------------------------------------------------------------------
  **Active**                             **Inactive**
  -------------------------------------- --------------------------------
  alsa-utils                             anacron

  apport                                 apparmor

  cron                                   bluetooth

  cups                                   console-setup.sh

  dbus                                   cryptisks
  -----------------------------------------------------------------------

SS:

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image3.png){width="3.006126421697288in"
height="2.250617891513561in"}

2.  Start the Bluetooth service using the systemctl command.

Ex. sudo systemctl start httpd

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image4.png){width="4.359946412948381in"
height="1.1875in"}

3.  Check the status of the Bluetooth service. What is its status?
    inactiveSS:

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image5.png){width="7.027083333333334in"
height="1.0680555555555555in"}

4.  Check the status of the cups services. Since when was it running?

Active since 2024-9-12 09:09:14 4min 36 s ago

SS:
![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image6.png){width="7.027083333333334in"
height="3.4166666666666665in"}

5.  Stop cups services.

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image7.png){width="6.969722222222222in"
height="0.3229615048118985in"}

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image8.png){width="1.1459930008748906in"
height="0.3125437445319335in"}

6.  Verify if the service was stopped.

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image9.png){width="7.027083333333334in"
height="3.6041666666666665in"}

7.  Restart the cups services

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image10.png){width="7.027083333333334in"
height="0.24375in"}

8.  Verify if the service was restarted.

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image11.png){width="1.1980839895013122in"
height="0.22919838145231847in"}

![](vertopal_c5088e25e02e4e7ba4ab26b43601480f/media/image12.png){width="7.027083333333334in"
height="3.2305555555555556in"}
