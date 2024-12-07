![image](https://github.com/user-attachments/assets/2d49b927-83fa-4dee-a478-5498f7ed5d44)


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

![image](https://github.com/user-attachments/assets/7136bc48-8006-4ed4-acc2-5a9dd5cbb6dd)


![image](https://github.com/user-attachments/assets/5bd933f8-50e6-44b0-826a-c53bb9406b7a)

2.  From the event viewer, explore the windows log and list down its
    major categories

**Major Categories:**

-   Application

![image](https://github.com/user-attachments/assets/5ed0e898-33b4-4b79-952b-44152015c36d)

-   Security

![image](https://github.com/user-attachments/assets/7f60f7d6-c826-4371-bf93-de35eb8232a9)


-   Setup

![image](https://github.com/user-attachments/assets/96450c75-5839-45a8-bd01-8ca242a609a4)


-   System

![image](https://github.com/user-attachments/assets/ad86a9db-cc1d-4cb5-b235-1bc23c9aaeb3)


-   Forwarded Events

![image](https://github.com/user-attachments/assets/456144af-dbc2-4ecb-820c-35a4c43945b5)


**Part 2: Filtering and Analyzing IIS Events**

1.  Apply filter to the windows log categories to display errors for the
    past 12 hours.

![image](https://github.com/user-attachments/assets/f21f7a01-f8ae-4a3b-a88f-ffa56b6d9b34)


2.  **Identify Critical Events** or recurring events.

![image](https://github.com/user-attachments/assets/69029797-4c1e-44ce-85f6-912ee5a982eb)


3.  **Analyze the Events**:

    -   For each critical or recurring event, **record the following
        details**:

        -   **Event ID**

        -   **Source**

        -   **Timestamp**

        -   **Description**

![image](https://github.com/user-attachments/assets/a103a4bb-6905-44f9-bd35-d0667e40545b)

![image](https://github.com/user-attachments/assets/83096706-ec99-4073-8cb1-a81964bbc0c5)

![image](https://github.com/user-attachments/assets/7e4cc39d-4bfb-4ab0-8d93-1083d7c03d0a)


![image](https://github.com/user-attachments/assets/ed36e993-c9b5-47d5-9a3b-7c4ae495e21b)

![image](https://github.com/user-attachments/assets/216f6162-b4c9-4f53-bb7b-f8b8ae7a589e)


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

![image](https://github.com/user-attachments/assets/c4d577a7-6123-4067-9b34-af332d366315)


Screenshots of Errors and Warnings:\
![image](https://github.com/user-attachments/assets/1be6c75f-623b-4f43-9d6c-54615a0322bb)
