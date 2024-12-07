![image](https://github.com/user-attachments/assets/e8ac1999-69d9-4fd3-86ba-7e7cfc80de0d)


# SYSADM1 -- Managing Services in Windows

# Requirement: 

-   A virtual machine running Linux and Windows OS

    **Services** are background processes that run independently of user
    interactions in Windows. They provide essential system functions,
    such as network connectivity, printing, and time synchronization.
    This lab will guide you through the process of managing services
    using the Services app.

# Instructions: 

1.  Open the Start menu and search for \"Services\"

2.  Familiarize yourself with the columns, including Service Name,
    Display Name, Status, and Startup type.

3.  Right-click on a service and select \"Start\", \"Stop\", or
    \"Restart\". Fill out the table below

![image](https://github.com/user-attachments/assets/d273f9c6-8815-49eb-ba75-ecfabd893dc6)

![image](https://github.com/user-attachments/assets/ae60de8f-8756-4a46-8165-65789ee9082c)


4.  Select five network services, right-click to view its properties.
    Modify the startup setting to Manual.

 **SS**:

![image](https://github.com/user-attachments/assets/80846e66-9de9-4eb8-a174-98392eb07de6)

![image](https://github.com/user-attachments/assets/011ad873-aa22-48ff-a977-4da06e5cb333)

5.  Explore the \"General\", \"Recovery\", and \"Log On\" tabs to
    understand additional service settings.

6.  Create a batch file that will be added as a new service later on.
    Refer to the batch file code below.

![image](https://github.com/user-attachments/assets/0ddff629-2b51-4ac4-b402-9289886e3917)


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

 **SS:**
 
![image](https://github.com/user-attachments/assets/5446d1dc-df98-4aed-8aa8-ca7798d1e654)


10. **Testing the Service:** Now, if you open a new command prompt, you
    should see the timer countdown without requiring your interaction.
    Once the timer finishes, you\'ll see the \"Timer finished!\"
    message.

![image](https://github.com/user-attachments/assets/dd9add8e-3356-4c9a-9bcc-8e9d65b5534c)


**Rubric**

![image](https://github.com/user-attachments/assets/d883d2d0-5d2c-4e3e-bb79-3183a7d630bb)

