+----------------------------------+------------------------+----------+
| ![](vertopal_                    |                        |          |
| 78d675c25cf2401db422dbc8b0f25d61 |                        |          |
| /media/image1.png){width="2.4in" |                        |          |
| height="0.5881944444444445in"}   |                        |          |
|                                  |                        |          |
| SCHOOL OF INFORMATION AND        |                        |          |
| TECHNOLOGY                       |                        |          |
+----------------------------------+------------------------+----------+
| NAME: Zhaun Gabrielle F. Pasion  | DATE PERFORMED:        |          |
|                                  | 29/8/2024              |          |
+----------------------------------+------------------------+----------+
| Section: IDC2                    | DATE SUBMITTED:        |          |
|                                  | 29/8/2024              |          |
+----------------------------------+------------------------+----------+

# SYSADM1 -- Managing Services in Windows

# Requirement: 

-   A virtual machine running Linux and Windows OS

    **Services** are background processes that run independently of user
    interactions in Windows. They provide essential system functions,
    such as network connectivity, printing, and time synchronization.
    This lab will guide you through the process of managing services
    using the Services app.

# Instructions:  {#instructions .list-paragraph}

1.  Open the Start menu and search for \"Services\"

2.  Familiarize yourself with the columns, including Service Name,
    Display Name, Status, and Startup type.

3.  Right-click on a service and select \"Start\", \"Stop\", or
    \"Restart\". Fill out the table below

+-------+------------+-------------------------------------------------+
| **Sta | **Name of  | **Screenshot**                                  |
| tus** | Service**  |                                                 |
+=======+============+=================================================+
| Start | Disk       | ![](vertopal_78d675c25cf2401db422dbc8b0f25d6    |
|       | D          | 1/media/image2.png){width="4.052648731408574in" |
|       | efragmeter | height="1.7606627296587927in"}                  |
|       |            |                                                 |
|       |            | ![](vertopal_78d675c25cf2401db422dbc8b0f25d61   |
|       |            | /media/image3.png){width="1.9377701224846895in" |
|       |            | height="0.6771773840769904in"}                  |
+-------+------------+-------------------------------------------------+
| Stop  | Software   | ![](vertopal_78d675c25cf2401db422dbc8b0f25d61   |
|       |            | /media/image4.png){width="3.9484678477690287in" |
|       | Protection | height="1.7085717410323709in"}                  |
|       |            |                                                 |
|       |            | ![](vertopal_78d675c25cf2401db422dbc8b0f25d6    |
|       |            | 1/media/image5.png){width="1.906515748031496in" |
|       |            | height="0.5104877515310586in"}                  |
+-------+------------+-------------------------------------------------+
| Re    | A          | ![](vertopal_78d675c25cf2401db422dbc8b0f25d61   |
| start | pplication | /media/image6.png){width="4.0417082239720035in" |
|       |            | height="0.9859372265966754in"}                  |
|       | Experience |                                                 |
|       |            | ![](vertopal_78d675c25cf2401db422dbc8b0f25d61   |
|       |            | /media/image7.png){width="3.9901399825021873in" |
|       |            | height="1.7294083552055992in"}                  |
+-------+------------+-------------------------------------------------+
| Pause | Server     | ![](vertopal_78d675c25cf2401db422dbc8b0f25d61   |
|       |            | /media/image8.png){width="3.9901399825021873in" |
|       |            | height="1.7085717410323709in"}                  |
|       |            |                                                 |
|       |            | ![](vertopal_78d675c25cf2401db422dbc8b0f25d61   |
|       |            | /media/image9.png){width="1.9273523622047244in" |
|       |            | height="0.552159886264217in"}                   |
+-------+------------+-------------------------------------------------+

4.  Select five network services, right-click to view its properties.
    Modify the startup setting to Manual.

> **SS**:
>
> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image10.png){width="3.0139665354330707in"
> height="3.3851465441819775in"}![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image11.png){width="2.983879046369204in"
> height="3.334064960629921in"}
>
> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image12.png){width="3.0998458005249345in"
> height="3.4815988626421697in"}![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image13.png){width="3.0170395888013997in"
> height="3.404413823272091in"}
>
> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image14.png){width="3.5297244094488187in"
> height="3.343163823272091in"}

5.  Explore the \"General\", \"Recovery\", and \"Log On\" tabs to
    understand additional service settings.

6.  Create a batch file that will be added as a new service later on.
    Refer to the batch file code below.

> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image15.png){width="4.808325678040245in"
> height="2.0055664916885387in"}

7.  Save the batch file in Z:\\lastname_timer.bat

8.  Use the sc command to add timer.bat service in the command line
    interface.

> *sc create BatchTimerService binPath= \"path_to_your_batch_file.bat\"
> start= auto*
>
> *net start BatchTimerService*
>
> **Replace path_to_your_batch_file.bat with the actual path to your
> batch file.**

9.  Verify that BatchTimerService has been added to the services.

> **SS:**
> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image16.png){width="5.115297462817148in"
> height="0.3125437445319335in"}
>
> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image17.png){width="3.739994531933508in"
> height="4.316811023622047in"}

10. **Testing the Service:** Now, if you open a new command prompt, you
    should see the timer countdown without requiring your interaction.
    Once the timer finishes, you\'ll see the \"Timer finished!\"
    message.

> **SS:**
> ![](vertopal_78d675c25cf2401db422dbc8b0f25d61/media/image18.png){width="5.198641732283464in"
> height="2.9274923447069114in"}

**Rubric**

  ---------------------------------------------------------------------------------------
  **Criteria**      **Excellent       **Good (7)**    **Needs          **Unsatisfactory
                    (10)**                            Improvement      (1)**
                                                      (3)**            
  ----------------- ----------------- --------------- ---------------- ------------------
  Understanding of  Demonstrates a    Shows a solid   Has a basic      Shows little or no
  Services          deep              understanding   understanding of understanding of
                    understanding of  of services,    services, but    services.
                    the concept of    but may lack    may struggle     
                    services, their   some depth in   with specific    
                    roles, and their  specific areas. concepts.        
                    importance in                                      
                    Windows.                                           

  Service           Successfully      Demonstrates    Can perform      Struggles to
  Management Skills starts, stops,    proficiency in  basic service    perform even basic
                    restarts, and     managing        management       service management
                    configures        services, but   tasks, but may   tasks.
                    services using    may encounter   need assistance  
                    the Services app. minor           or guidance.     
                                      difficulties.                    

  Custom Service    Successfully      Can create a    Has limited      Cannot create a
  Creation          creates and       custom service, experience with  custom service.
                    manages a custom  but may         creating custom  
                    service using the encounter minor services.        
                    appropriate tools difficulties or                  
                    and techniques.   require                          
                                      assistance.                      

  Problem-Solving   Demonstrates      Can effectively May require      Struggles to
                    strong            troubleshoot    assistance to    troubleshoot and
                    problem-solving   and resolve     troubleshoot     resolve issues.
                    skills when       most issues     some issues.     
                    encountering      related to                       
                    challenges or     service                          
                    errors.           management.                      

  Documentation and Provides clear    Documents the   Provides basic   Does not provide
  Reporting         and concise       lab activities  documentation,   any documentation
                    documentation of  adequately, but but may be       or reporting.
                    the lab           may lack some   disorganized or  
                    activities,       detail or       incomplete.      
                    including         clarity.                         
                    relevant                                           
                    screenshots and                                    
                    observations.                                      

  **Score:**        **/50**                                            
  ---------------------------------------------------------------------------------------
