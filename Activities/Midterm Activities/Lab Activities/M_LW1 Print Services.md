+----------------------------------+------------------------+----------+
| ![](vertopal_                    |                        |          |
| d023fcf893c840bea5aefbbefa67626b |                        |          |
| /media/image1.png){width="2.4in" |                        |          |
| height="0.5881944444444445in"}   |                        |          |
|                                  |                        |          |
| SCHOOL OF INFORMATION AND        |                        |          |
| TECHNOLOGY                       |                        |          |
+----------------------------------+------------------------+----------+
| NAME: Zhaun Gabrielle F. Pasion  | DATE PERFORMED:        | /50      |
|                                  | 26/9/24                |          |
+----------------------------------+------------------------+----------+
| Section: IDC2                    | DATE SUBMITTED:        |          |
|                                  | 26/9/24                |          |
+----------------------------------+------------------------+----------+

# SYSADM1 -- Monitoring Print Services in Windows Server 2019

# Requirement: 

-   A virtual machine running Linux and Windows OS

Part 1: Setting Up Print Services

1.  Install and configure **print.srv** domain

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image2.png){width="3.125436351706037in"
> height="0.7084317585301837in"}

2.  Connect one client to the recently created domain

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image3.png){width="2.9274923447069114in"
> height="1.791917104111986in"}

3.  Install Print Services Role:

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image4.png){width="3.604669728783902in"
> height="1.6252263779527558in"}

4.  Search the internet for any printer installer and convert it to iso

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image5.png){width="6.959304461942257in"
> height="0.7917771216097987in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image6.png){width="6.4383989501312335in"
> height="0.3229615048118985in"}

5.  Install and deploy it as network printer

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image7.png){width="5.052788713910761in"
> height="2.073206474190726in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image8.png){width="2.812892607174103in"
> height="1.9586067366579178in"}

Part 2: Monitoring Print Services

Objective: Familiarize yourself with monitoring tools available in
Windows Server 2019.

1.  Event Viewer:

    -   Open Event Viewer (run eventvwr.msc).

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image9.png){width="4.470565398075241in"
> height="3.094803149606299in"}

-   Navigate to Applications and Services Logs \> Microsoft \> Windows
    \> PrintService.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image10.png){width="4.789961723534558in"
> height="3.3159087926509185in"}

-   Review logs for print jobs, errors, and warnings.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image11.png){width="3.353190069991251in"
> height="3.746140638670166in"}
>
> New printer was set to as default printer
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image12.png){width="4.417283464566929in"
> height="2.0419520997375327in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image13.png){width="4.188083989501313in"
> height="2.073206474190726in"}
>
> Even logs updated after printing a document

2.  Performance Monitor:

    -   Open Performance Monitor (run perfmon).

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image14.png){width="5.526083770778652in"
> height="2.882912292213473in"}

-   In the left pane, expand Data Collector Sets \> System.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image15.png){width="5.073624234470691in"
> height="3.323380358705162in"}

-   Right-click System Performance and select Start.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image16.png){width="5.720214348206474in"
> height="1.711146106736658in"}

-   Monitor performance metrics related to print services.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image17.png){width="5.519225721784777in"
> height="3.809296806649169in"}
>
> Line have spiked up after printing a document

3.  Using Print Management Console:

    -   Open Print Management from Server Manager.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image18.png){width="6.043639545056868in"
> height="1.6125929571303588in"}

-   View active print jobs and their status.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image19.png){width="5.896655730533683in"
> height="1.4689545056867892in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image20.png){width="5.86540135608049in"
> height="1.3960279965004374in"}
>
> Both active printers are not printing anything at the moment

-   Use the Printers node to check the status of all printers.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image21.png){width="3.27128937007874in"
> height="0.7501049868766404in"}
>
> Both printers are ready for printing

Part 3: Exploring Third-Party Monitoring Tools

1.  Research at least two third-party print monitoring tools

    -   Consider factors such as features, pricing, and compatibility
        with Windows Server 2019

+----------------------------------+-----------------------------------+
| **PaperCut NG**                  |                                   |
+==================================+===================================+
| Features                         | -   Suitable for networks from 5  |
|                                  |     to 500,000+ users.            |
|                                  |                                   |
|                                  | -   Suitable for single server    |
|                                  |     environments to multi-server, |
|                                  |     multi-site and clustered      |
|                                  |     environments.                 |
|                                  |                                   |
|                                  | -   Capable of monitoring locally |
|                                  |     attached or workgroup         |
|                                  |     printers.                     |
|                                  |                                   |
|                                  | -   International: Available in   |
|                                  |     20+ languages and currency    |
|                                  |     formats worldwide.            |
|                                  |                                   |
|                                  | -   Almost all major laser,       |
|                                  |     inkjet, label and wide-format |
|                                  |     printers/MFDs/plotters.       |
|                                  |                                   |
|                                  | -   Supported print languages:    |
|                                  |     PCL, PCL6, HPGL, PostScript,  |
|                                  |     PCL-GUI,                      |
+----------------------------------+-----------------------------------+
| Pricing                          | Commercial -- Free to \$930       |
|                                  |                                   |
|                                  | Professional - \$692 to \$1712    |
|                                  |                                   |
|                                  | Educational -- Free to \$1385     |
+----------------------------------+-----------------------------------+
| Compatibility                    | Compatible with Server 2019       |
+----------------------------------+-----------------------------------+

+----------------------------------+-----------------------------------+
| **Print Inspector**              |                                   |
+==================================+===================================+
| Features                         | -   Detailed information on the   |
|                                  |     documents printed by remote   |
|                                  |     users (includes document      |
|                                  |     name, number of pages and     |
|                                  |     other parameters)             |
|                                  |                                   |
|                                  | -   Reports and statistical data  |
|                                  |                                   |
|                                  | -   Ability to export data for    |
|                                  |     further processing            |
|                                  |                                   |
|                                  | -   Printer queue management      |
|                                  |                                   |
|                                  | -   Easy management and access to |
|                                  |     printer and print server      |
|                                  |     settings                      |
|                                  |                                   |
|                                  | -   Makes no changes to your      |
|                                  |     system files, configurable to |
|                                  |     load on Windows start-up      |
+----------------------------------+-----------------------------------+
| Pricing                          | Free                              |
+----------------------------------+-----------------------------------+
| Compatibility                    | Compatible with Server 2019       |
+----------------------------------+-----------------------------------+

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

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image22.png){width="2.0211154855643043in"
> height="0.7917771216097987in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image23.png){width="6.469653324584427in"
> height="0.40630686789151355in"}

-   Follow the installation instructions provided by the tool\'s
    documentation.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image24.png){width="4.908760936132984in"
> height="3.7142344706911636in"}

![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image25.png){width="3.802290026246719in"
height="2.907199256342957in"}

-   Configure it to monitor your print services.

![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image26.png){width="5.516832895888014in"
height="1.9038221784776903in"}

3.  Test and Report Findings:

    -   Generate a report or dashboard from the tool.

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image27.png){width="5.503101487314086in"
> height="1.9322583114610674in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image26.png){width="5.516832895888014in"
> height="1.9038221784776903in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image28.png){width="4.531802274715661in"
> height="4.219650043744532in"}
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image29.png){width="3.781778215223097in"
> height="4.3964468503937in"}
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

> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image30.png){width="5.5887718722659665in"
> height="1.7281616360454943in"}
>
> Job Logs: No documents Printed yet
>
> ![](vertopal_d023fcf893c840bea5aefbbefa67626b/media/image31.png){width="6.289933289588801in"
> height="1.8610597112860892in"}
>
> Everyone connected to the server can print.
>
> Print Que: 0, no printing ques at the moment

REFERENCES:

SoftPerfect Print Inspector : printer usage monitoring and audit.
(n.d.). https://www.softperfect.com/products/pinspector/

> Thank you. (n.d.). PaperCut.
> https://www.papercut.com/thank-you/ng/?submissionGuid=2d313352-1bba-4fdd-9a01-11c14e1ff333

PrinterDrivers.com. (n.d.).
https://printerdrivers.com/epson-l6171-driver/#windows

Rubric

  --------------------------------------------------------------------------------------------------------------
  **Criteria**   **1                  **2 (Needs       **3                **4        **5             **Score**
                 (Unsatisfactory)**   Improvement)**   (Satisfactory)**   (Good)**   (Excellent)**   
  -------------- -------------------- ---------------- ------------------ ---------- --------------- -----------

  --------------------------------------------------------------------------------------------------------------

  ---------------------------------------------------------------------------------
  **Part 1: Setting Up Print Services**                                          
  --------------------------------------------------------------- -- -- -- -- -- --

  ---------------------------------------------------------------------------------

  ----------------------------------------------------------------------------------
  **Domain         No domain Domain     Domain      Domain       Domain           
  Installation**   created   created    created     configured   configured and   
                             with       correctly   well         documented       
                             errors                              thoroughly       
  ---------------- --------- ---------- ----------- ------------ ---------------- --

  ----------------------------------------------------------------------------------

  --------------------------------------------------------------------------------
  **Client       Client not  Connection   Client      Client      Client        
  Connection**   connected   attempt      connected   connected   connected and 
                             failed       but with    correctly   documented    
                                          issues                  well          
  -------------- ----------- ------------ ----------- ----------- ------------- --

  --------------------------------------------------------------------------------

  ------------------------------------------------------------------------------------
  **Print Services Role not    Role        Role        Role         Role installed, 
  Role             installed   installed   installed   installed    configured, and 
  Installation**               with issues correctly   and          documented      
                                                       configured   thoroughly      
  ---------------- ----------- ----------- ----------- ------------ --------------- --

  ------------------------------------------------------------------------------------

  ---------------------------------------------------------------------------------
  **Printer      No          Installer    Installer   Installer   Installer      
  Installer      installer   conversion   converted   converted   converted,     
  Conversion**   found       attempted    but not     and used    used, and      
                             but failed   used                    documented     
                                                                  well           
  -------------- ----------- ------------ ----------- ----------- -------------- --

  ---------------------------------------------------------------------------------

  ---------------------------------------------------------------------------------
  **Network      Printer    Deployment   Printer      Printer     Printer        
  Printer        not        failed       deployed but deployed    deployed,      
  Deployment**   deployed                not          correctly   tested, and    
                                         functional               documented     
                                                                  well           
  -------------- ---------- ------------ ------------ ----------- -------------- --

  ---------------------------------------------------------------------------------

  ---------------------------------------------------------------------------------
  **Part 2: Monitoring Print Services**                                          
  --------------------------------------------------------------- -- -- -- -- -- --

  ---------------------------------------------------------------------------------

  ------------------------------------------------------------------------------
  **Event   Event     Opened but  Logs reviewed Logs        Logs reviewed     
  Viewer    Viewer    no logs     but           reviewed    with thorough     
  Usage**   not       reviewed    superficial   with some   analysis and      
            opened                              analysis    documentation     
  --------- --------- ----------- ------------- ----------- ----------------- --

  ------------------------------------------------------------------------------

  ----------------------------------------------------------------------------------
  **Performance   Performance   Opened but  Metrics     Metrics     Metrics       
  Monitor Usage** Monitor not   no metrics  monitored   monitored   monitored,    
                  opened        monitored   but not     with some   analyzed, and 
                                            analyzed    analysis    documented    
                                                                    thoroughly    
  --------------- ------------- ----------- ----------- ----------- ------------- --

  ----------------------------------------------------------------------------------

  ----------------------------------------------------------------------------------
  **Print       Console   Opened but      Active jobs     Active    Active jobs   
  Management    not       functionality   viewed          jobs      viewed and    
  Console       opened    not used        superficially   viewed    documented    
  Usage**                                                 with some thoroughly    
                                                          detail                  
  ------------- --------- --------------- --------------- --------- ------------- --

  ----------------------------------------------------------------------------------

  ---------------------------------------------------------------------------------
  **Part 3: Exploring Third-Party Tools**                                        
  --------------------------------------------------------------- -- -- -- -- -- --

  ---------------------------------------------------------------------------------

  ---------------------------------------------------------------------------------
  **Research   No tools     Research     Research on Research on  Research on    
  on Tools**   researched   incomplete   one tool    two tools    two tools,     
                                         completed   with some    detailed       
                                                     analysis     analysis, and  
                                                                  comparison     
  ------------ ------------ ------------ ----------- ------------ -------------- --

  ---------------------------------------------------------------------------------

  ----------------------------------------------------------------------------------------
  **Installation    Tool not    Installation   Tool         Tool         Tool           
  and               installed   failed         installed    installed    installed,     
  Configuration**                              but not      and          configured,    
                                               configured   configured   and documented 
                                                            with issues  thoroughly     
  ----------------- ----------- -------------- ------------ ------------ -------------- --

  ----------------------------------------------------------------------------------------

  -------------------------------------------------------------------------------
  **Reporting   No report   Report   Report      Report      Comprehensive     
  Findings**    generated   lacks    generated   generated   report with       
                            detail   but lacks   with some   thorough analysis 
                                     analysis    analysis    and documentation 
  ------------- ----------- -------- ----------- ----------- ----------------- --

  -------------------------------------------------------------------------------
