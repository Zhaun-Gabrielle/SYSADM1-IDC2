+----------------------------------+------------------------+----------+
| ![](vertopal_                    |                        |          |
| 8dc1718406014dc3814a01377984bd3b |                        |          |
| /media/image1.png){width="2.4in" |                        |          |
| height="0.5881944444444445in"}   |                        |          |
|                                  |                        |          |
| SCHOOL OF INFORMATION AND        |                        |          |
| TECHNOLOGY                       |                        |          |
+----------------------------------+------------------------+----------+
| NAME: Zhaun Gabrielle F. Pasion  | DATE PERFORMED:        | /50      |
|                                  | 17/10/24               |          |
+----------------------------------+------------------------+----------+
| Section: IDC2                    | DATE SUBMITTED:        |          |
|                                  | 17/10/24               |          |
+----------------------------------+------------------------+----------+

# SYSADM1 -- Platform Services

# Requirement: 

-   A virtual machine running Windows Server

    **Objective/s:**

    To analyze IIS logs in the Event Viewer to identify critical web
    service metrics, understand common error codes, and learn how to
    monitor the health of web applications.

**Instructions**

**Part 1: Opening Event Viewer and Loading Logs**

1.  Access the event viewer in the server.

![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image2.png){width="5.639410542432196in"
height="4.8444717847769025in"}

![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image3.png){width="4.156829615048119in"
height="1.6460629921259842in"}

2.  From the event viewer, explore the windows log and list down its
    major categories

**Major Categories:**

-   Application

> ![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image4.png){width="4.873097112860893in"
> height="2.6823950131233594in"}

-   Security

> ![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image5.png){width="4.884305555555556in"
> height="2.5775470253718287in"}

-   Setup

> ![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image6.png){width="4.9785050306211724in"
> height="1.940430883639545in"}

-   System

> ![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image7.png){width="5.044974846894139in"
> height="2.7331310148731407in"}

-   Forwarded Events

> ![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image8.png){width="5.028314741907262in"
> height="2.619255249343832in"}

**Part 2: Filtering and Analyzing IIS Events**

1.  Apply filter to the windows log categories to display errors for the
    past 12 hours.

![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image9.png){width="5.719548337707787in"
height="2.9274923447069114in"}

2.  **Identify Critical Events** or recurring events.

> ![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image10.png){width="4.854201662292214in"
> height="2.422759186351706in"}

3.  **Analyze the Events**:

    -   For each critical or recurring event, **record the following
        details**:

        -   **Event ID**

        -   **Source**

        -   **Timestamp**

        -   **Description**

+-------+---------+-------------------+------------------------------+
| **    | **S     | **Timestamp**     | **Description**              |
| Event | ource** |                   |                              |
| ID**  |         |                   |                              |
+=======+=========+===================+==============================+
| 6006  | W       | 10/17/2024/       | The winlogon notification    |
|       | inlogon | 9:01:31 AM        | subscriber \<GPClient\> took |
|       |         |                   | 120 second(s) to handle the  |
|       |         |                   | notification event (Create   |
|       |         |                   | Session)                     |
+-------+---------+-------------------+------------------------------+
| 6005  | W       | 10/17/2024/       | The winlogon notification    |
|       | inlogon | 9:00:30 AM        | subscriber \<GPClient\> is   |
|       |         |                   | taking too long to handle    |
|       |         |                   | the notification event       |
|       |         |                   | (Create Session)             |
+-------+---------+-------------------+------------------------------+
| 16387 | S       | 10/17/2024/       | Failed to run task           |
|       | ecurity | 9:00:11 AM        | \\Mic                        |
|       |         |                   | rosoft\\Windows\\WS\\License |
|       |         |                   | Validation. Error Code       |
|       |         |                   | 0x80041326.                  |
+-------+---------+-------------------+------------------------------+
| 1008  | Perflib | 10/17/2024/       | The Open Procedure for       |
|       |         | 8:59:47 AM        | Service "BITs" in DDL        |
|       |         |                   | "C:\\Wind                    |
|       |         |                   | ows\\System32\\bitsperf.dll" |
|       |         |                   | failed. Performance data for |
|       |         |                   | this service will not be     |
|       |         |                   | available. The first four    |
|       |         |                   | bytes (DWORD) of the Data    |
|       |         |                   | section Contains the error   |
|       |         |                   | code.                        |
+-------+---------+-------------------+------------------------------+
| 8198  | S       | 10/17/2024/       | License Activation           |
|       | ecurity | 8:44:10 AM        | (slui.exe) failed with the   |
|       |         |                   | following error code:\       |
|       |         |                   | hr=0xC004C003                |
+-------+---------+-------------------+------------------------------+
| 1014  | S       | 10/17/2024/       | Acquisition of End User      |
|       | ecurity | 8:44:10 AM        | License failed.              |
|       |         |                   | He=0xC004C003 Sku            |
|       |         |                   | id=439e8c91-                 |
|       |         |                   | ff38-4ecb-ba0b-326586080c953 |
+-------+---------+-------------------+------------------------------+
| 8200  | S       | 10/17/2024/       | License acquisition failure  |
|       | ecurity | 8:44:10 AM        | details                      |
|       |         |                   |                              |
|       |         |                   | Hr=0xC004C003                |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution of the name  |
|       | Client  | 9:09:29 AM        | ipv6.msftncsi.com timeout    |
|       | Event   |                   | after none of the DNS        |
|       |         |                   | servers responded            |
+-------+---------+-------------------+------------------------------+
| 10154 | Windows | 10/17/2024/       | The WinRM service failed to  |
|       | Remote  | 9:09:06 AM        | create the following SPNs:   |
|       | Man     |                   | WSMAN/PasionServer.SRVR.org; |
|       | agement |                   | WSMAN/PasionServer           |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution for the      |
|       | Client  | 9:08:37 AM        | name_ld                      |
|       | Events  |                   | ap.\_tcp.dc.\_msdcs.SRVR.org |
|       |         |                   | timed out after none of the  |
|       |         |                   | configured DNS servers       |
|       |         |                   | responded.                   |
+-------+---------+-------------------+------------------------------+
| 34    | disk    | 10/17/2024/       | The driver disabled the      |
|       |         | 9:08:35 AM        | write change on the device   |
|       |         |                   | \\Device\\Harddisk0\\DR0     |
+-------+---------+-------------------+------------------------------+
| 34    | disk    | 10/17/2024/       | The driver disabled the      |
|       |         | 9:08:35 AM        | write change on the device   |
|       |         |                   | \\Device\\Harddisk0\\DR0     |
+-------+---------+-------------------+------------------------------+
| 34    | disk    | 10/17/2024/       | The driver disabled the      |
|       |         | 9:08:35 AM        | write change on the device   |
|       |         |                   | \\Device\\Harddisk0\\DR0     |
+-------+---------+-------------------+------------------------------+
| 34    | disk    | 10/17/2024/       | The driver disabled the      |
|       |         | 8:58:42 AM        | write change on the device   |
|       |         |                   | \\Device\\Harddisk0\\DR0     |
+-------+---------+-------------------+------------------------------+
| 34    | disk    | 10/17/2024/       | The driver disabled the      |
|       |         | 8:58:42 AM        | write change on the device   |
|       |         |                   | \\Device\\Harddisk0\\DR0     |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution for the name |
|       | Client  | 8:53:42 AM        | 6t04.ipv6.microsoft.com      |
|       | Events  |                   | timed out after none of the  |
|       |         |                   | configured DNS server        |
|       |         |                   | responded                    |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution for the name |
|       | Client  | 8:53:00 AM        | ipv6.msftncsi.com timed out  |
|       | Events  |                   | after none of the configured |
|       |         |                   | DNS server responded         |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution for the name |
|       | Client  | 8:44:46 AM        | ipv6.msftncsi.com timed out  |
|       | Events  |                   | after none of the configured |
|       |         |                   | DNS server responded         |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution for the name |
|       | Client  | 8:44:45 AM        | win8.ipv6.microsoft.com.     |
|       | Events  |                   | timed out after none of the  |
|       |         |                   | configured DNS server        |
|       |         |                   | responded                    |
+-------+---------+-------------------+------------------------------+
| 1014  | DNS     | 10/17/2024/       | Name resolution for the name |
|       | Client  | 8:44:45 AM        | win8.ipv6.microsoft.com      |
|       | Events  |                   | timed out after none of the  |
|       |         |                   | configured DNS server        |
|       |         |                   | responded                    |
+-------+---------+-------------------+------------------------------+
| 7023  | Service | 10/17/2024/       | The windows Time service     |
|       | Control | 8:58:43 AM        | Terminated with the          |
|       | Manager |                   | following error: An attempt  |
|       |         |                   | was made to logon, but the   |
|       |         |                   | network logon service was    |
|       |         |                   | not started                  |
+-------+---------+-------------------+------------------------------+
| 46    | Time-   | 10/17/2024/       | The time service encountered |
|       | Service | 8:44:45 AM        | an error and was forced to   |
|       |         |                   | shut down. The error was:    |
|       |         |                   | 0x80070700: An attempt was   |
|       |         |                   | made to logon, but the       |
|       |         |                   | network logon service was    |
|       |         |                   | not started                  |
+-------+---------+-------------------+------------------------------+
| 7030  | Serve   | 10/17/2024/       | The Printer Extensions and   |
|       | Control | 8:45:40 AM        | Notification services is     |
|       | manager |                   | marked as an interactive     |
|       |         |                   | service. However the system  |
|       |         |                   | is configured to not allow   |
|       |         |                   | interactive services. This   |
|       |         |                   | service may not function     |
|       |         |                   | properly.                    |
+-------+---------+-------------------+------------------------------+

**Part 3: Troubleshooting and Solution Development**

1.  Review the logs and check for recurring errors.

2.  Is there a specific time or pattern to these errors?

> Based on the event at event viewer, warning and errors most likely
> happed after I have setup the server. The errors exhibit a pattern of
> occurring primarily within the first hour of system activity (8:44 AM
> to 9:09 AM).

3.  Draft a Troubleshooting Report:

    -   Based on the events found, create a short report with the
        following sections:

**Report Structure**

**1.** Overview

-   A brief summary of the issue and scope of your analysis.

**2.** Key Findings

-   List the critical events you found. Example:

    -   **Event ID 503**: Application pool stopped at 10:05 AM.

    -   **Event ID 404**: Page not found error at 11:15 AM.

**3.** Root Causes and Solutions

-   Describe the likely cause of each error and how you would fix it.

**Event Viewer Report**

This report analyzes multiple events logged on 10/17/2024, highlighting
recurring issues related to license activation, DNS resolution failures,
and disk write changes.

**Key Findings:**

-   **Event ID 6006/6005:** GPClient took excessive time to handle
    session creation. Error at 9:01:31 AM (6006), 9:00:30 AM (6005)

-   **Event ID 16387:** Task failure for License Validation (Error Code
    0x80041326). Error at 9:00:11 AM

-   **Event ID 8198/1014:** License activation failed (hr=0xC004C003).
    Error at 8:44:10 AM

-   **Event ID 1014 (DNS Client Events):** Multiple DNS resolution
    timeouts for various addresses.

> **Warnings at**:

-   9:09:29 AM

-   9:08:37 AM

-   8:53:42 AM

-   8:53:00 AM

-   8:44:46 AM

-   8:44:45 AM

-   **Event ID 34 (Disk)**: Multiple instances of write changes being
    disabled on the hard disk. Warning at 8:58:42 AM and 9:08:35 AM on
    multiple instances

-   **Event ID 7023**: Windows Time service terminated due to network
    logon service not being started. Error at 8:58:43 AM

-   **Event ID 46 (Time-Service)**: Time service encountered an error
    and shut down. Error at 8:44:45 AM

-   **Event ID 7030**: Printer Extensions and Notification services
    marked as interactive, but system disallows it. Error at 8:45:40 AM

#### **Root Causes and Solutions**

-   **GPClient Delays:** Likely due to policy processing delays; I would
    consider optimizing group policies or checking for network issues.

-   **License Validation Failure:** This may indicate activation issues;
    I will verify the licensing status and try reactivating Windows.

-   **DNS Timeouts:** Checking the DNS server configurations or consider
    using alternate DNS servers to improve resolution would possibly fix
    this error.

-   **Disk Write Changes Disabled:** This could indicate hardware issues
    or driver problems; checking the disk health and updating drivers, I
    will also check if the disk is properly installed.

-   **Windows Time Service Termination:** Ensure the network logon
    service is started and configured correctly to prevent time service
    failures.

-   **Time-Service Error:** Investigate network logon issues and ensure
    proper service dependencies are active.

-   **Printer Extensions Service Warning:** Either configure the system
    to allow interactive services or adjust the service configuration to
    avoid functional issues.

**Part 4: Reflection Questions**

1.  What are the most common causes of a **503 Service Unavailable**
    error? (most reoccurring errors)

> The most common recurring errors in the logs include DNS resolution
> timeouts, service terminations related to the Windows Time service and
> GPClient delays, and license activation failures. These issues
> indicate potential network problems, service misconfigurations, and
> activation issues that may affect system stability and performance.

2.  How would you **monitor login attempts** to detect potential
    security threats?

> To monitor login attempts and detect potential security threats using
> Event Viewer, I would start by ensuring that the audit policy for
> logon events is enabled to log both successful and failed logins. I
> would then access the Security logs in Event Viewer, focusing on Event
> IDs 4624 (successful logon) and 4625 (failed logon). Creating custom
> views to filter these events would streamline the review process.
> Regularly reviewing the logs would help identify patterns, such as
> repeated failed attempts or unusual logins from unfamiliar IP
> addresses. If possible, setting up alerts for specific Event IDs would
> allow for real-time notifications of suspicious activities. Finally,
> documenting any anomalies would aid in further investigation and
> refine monitoring practices.

3.  Why is **monitoring logs** in Event Viewer important for
    administrators?

Monitoring logs in the Event Viewer is important for administrators
because it helps them track and identify problems on the system. In this
activity, we used Event Viewer to find critical and recurring errors,
which helped me notice issues that might not be obvious right away.
Similarly, administrators can look for errors and warnings to understand
what's happening in the system. Regularly checking these logs allows
them to fix problems before they become bigger issues and helps keep the
system running smoothly. It also helps detect unauthorized access and
other security threats, making sure sensitive information is protected.
Overall, checking logs in Event Viewer is key to keeping the system
healthy and secure.

**Additiional Reflection:**

I have noticed that there are extra event logs that are not documented
in the servers Event Viewer. On the Event Viewer, errors started while I
was setting up the server. In the server manager I have noticed that
there is a similar event logs like the events vieser but it is not
detailed. I have also noticed that there are logs that are advanced. I
have been looking at the server currently at 17/10/2024 10:28:00 AM
however there are logs that are 10/17/2024 11:40:34 PM which is
advanced. I have checked that the time and date configuration of the
serve is correct and it using the current date and time in which the
server is located.

Grading Rubric

  ---------------------------------------------------------------------------------------------------------------------------------------
  **Criteria**        **Excellent**     **Good**          **Needs                           **Poor**                         **Points**
                                                          Improvement**                                                      
  ------------------- ----------------- ----------------- --------------- ----------------- ------------- ------------------ ------------
  **Log Analysis**    Identifies all    Identifies most   Identifies some                   Fails to                         /10
                      key events (503,  key events with   events, but                       identify key                     
                      404, 500, etc.)   minor errors in   with incomplete                   events or                        
                      with accurate     details.          or incorrect                      provides                         
                      event details.                      details.                          incorrect                        
                                                                                            details.                         

  **Troubleshooting   Proposes logical, Solutions are     Solutions are                     Solutions are                    /10
  Solutions**         effective         mostly correct    somewhat vague                    unclear or                       
                      solutions to all  but miss some key or incomplete.                    incorrect.                       
                      identified        points.                                                                              
                      issues.                                                                                                

  **Report Structure  Well-organized    Report is mostly  Report is                         Report is                        /10
  & Clarity**         report with all   organized with    disorganized or                   unclear or                       
                      sections clearly  minor formatting  missing                           incomplete.                      
                      completed.        issues.           sections.                                                          

  **Recommendations   Provides          Recommendations                   Recommendations                 Fails to provide   /10
  for Monitoring**    thoughtful,       are relevant but                  are vague or                    relevant           
                      proactive         lack depth.                       incomplete.                     recommendations.   
                      recommendations                                                                                        
                      to prevent future                                                                                      
                      issues.                                                                                                

  **Participation &   Actively engaged  Participated but                  Minimal                         Did not            /10
  Effort**            in the activity,  required some                     participation,                  participate        
                      followed          guidance.                         needed                          meaningfully.      
                      instructions                                        significant help.                                  
                      thoroughly.                                                                                            

  **Score**                                                                                                                  **/50**
  ---------------------------------------------------------------------------------------------------------------------------------------

Screenshots of Errors and Warnings:\
![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image11.png){width="4.9069346019247595in"
height="1.8960979877515312in"}

![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image12.png){width="5.86540135608049in"
height="2.229478346456693in"}

![](vertopal_8dc1718406014dc3814a01377984bd3b/media/image13.png){width="4.615227471566055in"
height="1.5418821084864391in"}
