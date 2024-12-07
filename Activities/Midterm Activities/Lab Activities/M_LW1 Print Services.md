![image](https://github.com/user-attachments/assets/8c59718a-34f6-4fe2-b0bf-cabc6f288728)


# SYSADM1 -- Monitoring Print Services in Windows Server 2019

# Requirement: 

-   A virtual machine running Linux and Windows OS

Part 1: Setting Up Print Services

1.  Install and configure **print.srv** domain

![image](https://github.com/user-attachments/assets/08e18842-8a58-4088-a2a0-584613c64560)


2.  Connect one client to the recently created domain

![image](https://github.com/user-attachments/assets/76bcb4f6-ed52-4d80-81b5-670396b34e34)


3.  Install Print Services Role:

![image](https://github.com/user-attachments/assets/554a8135-a89e-402e-a671-f057eda9c91d)


4.  Search the internet for any printer installer and convert it to iso

![image](https://github.com/user-attachments/assets/0e9b5dd6-4565-40ea-882c-877a89e74b10)


5.  Install and deploy it as network printer

![image](https://github.com/user-attachments/assets/3e056b8b-2094-444a-8e10-e4be25d5bfbe)


Part 2: Monitoring Print Services

Objective: Familiarize yourself with monitoring tools available in
Windows Server 2019.

1.  Event Viewer:

    -   Open Event Viewer (run eventvwr.msc).

![image](https://github.com/user-attachments/assets/5f664555-e0af-4da0-88fe-4095301bb13d)


-   Navigate to Applications and Services Logs \> Microsoft \> Windows
    \> PrintService.

![image](https://github.com/user-attachments/assets/3e086db8-e26b-40cf-b17c-9345e0ff3c78)


-   Review logs for print jobs, errors, and warnings.

![image](https://github.com/user-attachments/assets/bfce3d03-6e2c-425b-ac09-50bf2289aa84)


 New printer was set to as default printer

![image](https://github.com/user-attachments/assets/4c9a5f95-516c-4284-88a8-f5bfd420c96f)


 Even logs updated after printing a document

2.  Performance Monitor:

    -   Open Performance Monitor (run perfmon).

![image](https://github.com/user-attachments/assets/9a294d67-360c-4446-af8a-8285c7c72787)


-   In the left pane, expand Data Collector Sets \> System.

![image](https://github.com/user-attachments/assets/42ef5fee-3f69-4edb-9d36-b7a51b4c5216)


-   Right-click System Performance and select Start.

![image](https://github.com/user-attachments/assets/e8df06b1-10ca-4ab2-be29-ce91a1f12a4e)


-   Monitor performance metrics related to print services.

![image](https://github.com/user-attachments/assets/1818b1b9-c6f1-4f3c-bfc1-77fa3db3abf6)


Line have spiked up after printing a document

3.  Using Print Management Console:

    -   Open Print Management from Server Manager.

![image](https://github.com/user-attachments/assets/e3172b78-f9ef-4c0b-ab22-b6c94d22fb40)


-   View active print jobs and their status.

![image](https://github.com/user-attachments/assets/1fe929dd-7f68-48c7-984d-0d0db6cec1b3)


Both active printers are not printing anything at the moment

-   Use the Printers node to check the status of all printers.

![image](https://github.com/user-attachments/assets/0b7702d2-4449-42ab-bca5-19ea378d330e)


Both printers are ready for printing

Part 3: Exploring Third-Party Monitoring Tools

1.  Research at least two third-party print monitoring tools

    -   Consider factors such as features, pricing, and compatibility
        with Windows Server 2019

![image](https://github.com/user-attachments/assets/d211ee9f-7e1f-4d54-9888-d84aa01d28c5)


![image](https://github.com/user-attachments/assets/accaa6c0-ec5a-407f-8b3a-8dfc3841e667)


> **Comparison**

-   **User Capacity:** PaperCut supports networks from 5 to 500,000+
    users, while Print Inspector\'s capacity is not specified but likely
    focuses on remote user monitoring.

-   **Environment**: PaperCut is suitable for single to multi-server,
    multi-site, and clustered environments, whereas Print Inspector
    primarily manages printer queue and auditing.

-   **Printer Monitoring:** PaperCut monitors locally attached or
    workgroup printers, while Print Inspector records detailed
    information about all printed documents, including user and computer
    details.

-   **Language Support:** PaperCut is available in 20+ languages and
    currency formats, while Print Inspector does not specify language
    support.

-   **Printer Compatibility:** PaperCut supports almost all major
    printers, while Print Inspector is compatible with various printers
    and plotters.

-   **Supported Print Languages:** PaperCut supports several print
    languages (PCL, PCL6, HPGL, PostScript, PCL-GUI), while Print
    Inspector does not specify supported print languages.

-   **Export Data:** PaperCut does not mention export capabilities,
    while Print Inspector allows data export for further processing.

-   **Queue Management:** Queue management is implied for PaperCut,
    while Print Inspector offers dedicated management features for print
    jobs in the queue.

-   **System Impact**: PaperCut may change system files, whereas Print
    Inspector makes no changes to system files and can load on Windows
    start-up.

-   **License:** PaperCut has a commercial pricing structure, while
    Print Inspector is available as freeware.

-   **Discontinuation:** PaperCut is an active product, while Print
    Inspector is discontinued with no further updates or support.

2.  Install and Configure:

    -   Choose one of the tools to install in your environment.

![image](https://github.com/user-attachments/assets/d0d8b98a-a23e-4f61-815b-4f2543d37f69)


-   Follow the installation instructions provided by the tool\'s
    documentation.

![image](https://github.com/user-attachments/assets/bdb37ddf-e611-43cf-a50a-b09b4f706ef8)


-   Configure it to monitor your print services.

![image](https://github.com/user-attachments/assets/855db139-3881-4103-8b66-24ec846cd695)


3.  Test and Report Findings:

    -   Generate a report or dashboard from the tool.

![image](https://github.com/user-attachments/assets/702b6f0a-4a86-4aa8-8876-45223b62cff9)

![image](https://github.com/user-attachments/assets/055fd551-d050-484b-9062-6bef186977b2)

>
> Report:
>
> System uptime: 10m and 59s (Started after installation)
>
> Data: No data acquired, need to wait 2 days to gather and compute data
>
> Printer: EPSON printer installed as default in the third party app
>
> Pricing: The app features a pricing system for printing
>
> The app has an environmental feature

-   Analyze the collected data (e.g., print volume, errors, user
    activity).

![image](https://github.com/user-attachments/assets/79e5c814-c488-4bc4-902b-61e6db51c1c1)


Job Logs: No documents Printed yet

![image](https://github.com/user-attachments/assets/17fad03c-7da3-4fbb-b9dc-f8301fda69b0)



Everyone connected to the server can print.
Print Que: 0, no printing ques at the moment

REFERENCES:

SoftPerfect Print Inspector : printer usage monitoring and audit.
(n.d.). https://www.softperfect.com/products/pinspector/

> Thank you. (n.d.). PaperCut.
> https://www.papercut.com/thank-you/ng/?submissionGuid=2d313352-1bba-4fdd-9a01-11c14e1ff333

PrinterDrivers.com. (n.d.).
https://printerdrivers.com/epson-l6171-driver/#windows

Rubric

![image](https://github.com/user-attachments/assets/0f991d70-dc36-4465-a4cc-2073f83a802d)


  ---------------------------------------------------------------------------------
  **Part 2: Monitoring Print Services**                                          
  --------------------------------------------------------------- -- -- -- -- -- --

  ![image](https://github.com/user-attachments/assets/c4b46f96-aa2e-41da-beab-fa6307e6f8ad)


  ---------------------------------------------------------------------------------
  **Part 3: Exploring Third-Party Tools**                                        
  --------------------------------------------------------------- -- -- -- -- -- --

![image](https://github.com/user-attachments/assets/7fd8a70f-0a4b-4dd2-b08e-4ed8e9eb943e)
