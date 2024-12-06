+----------------------------------+------------------------+----------+
| ![](vertopal_                    |                        |          |
| 6e7189e9e89b4f2ca089518a6dc33f6c |                        |          |
| /media/image1.png){width="2.4in" |                        |          |
| height="0.5881944444444445in"}   |                        |          |
|                                  |                        |          |
| SCHOOL OF INFORMATION AND        |                        |          |
| TECHNOLOGY                       |                        |          |
+----------------------------------+------------------------+----------+
| NAME: Zhaun Gabrielle F. Pasion  | DATE PERFORMED:        | /50      |
|                                  | 10/10/24               |          |
+----------------------------------+------------------------+----------+
| Section: IDC2                    | DATE SUBMITTED:        |          |
|                                  | 10/10/24               |          |
+----------------------------------+------------------------+----------+

# SYSADM1 -- Setting Up Webserver

# Requirement: 

-   A virtual machine running Linux and Windows OS

    Task Instructions:

1.  Install IIS by adding it as a role, select necessary features,
    include monitoring tools

    ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image2.png){width="5.813311461067366in"
    height="3.4900699912510937in"}

2.  Create a website by opening IIS Manager

    -   Right-click on the server's name and select Internet Information
        Services Manager.

        ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image3.png){width="4.894784558180228in"
        height="2.837030839895013in"}

    -   Right-click on Sites and select Add Website.

        ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image4.png){width="5.275632108486439in"
        height="4.926830708661417in"}

    -   Enter a name, description, physical path (where your website
        files will reside), IP address, port, and host name.

        ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image5.png){width="5.6489676290463695in"
        height="5.347689195100612in"}

3.  Create a Web Page:

    -   Create an HTML file in the physical path you specified.

        ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image6.png){width="3.652083333333333in"
        height="1.52377624671916in"}

    -   Save it as default.html or your preferred name.

        ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image7.png){width="4.9670220909886265in"
        height="1.7381386701662291in"}

4.  Test the Web Server:

    -   Open a web browser and enter the URL of your website (e.g.,
        http://localhost).

    -   You should see your web page displayed.

> **SERVER**
>
> ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image8.png){width="6.051126421697288in"
> height="1.781431539807524in"}
>
> ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image9.png){width="6.02607939632546in"
> height="1.8563746719160106in"}
>
> **CLIENT**
>
> ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image10.png){width="4.448537839020123in"
> height="2.156550743657043in"}
>
> ![](vertopal_6e7189e9e89b4f2ca089518a6dc33f6c/media/image11.png){width="5.823729221347332in"
> height="2.2086417322834646in"}

Grading Rubric

  ------------------------------------------------------------------------------
  **Criteria**      **Points**   **Description**
  ----------------- ------------ -----------------------------------------------
  Web Server        15           Correctly installs IIS or another web server on
  Installation                   the virtual machine.

  Website           15           Successfully configures the website with the
  Configuration                  correct physical path, IP address, port, and
                                 default document.

  Successful Access 15           Successfully accesses the web page from the
                                 client computer using the correct URL.

  Troubleshooting   15           Demonstrates ability to troubleshoot common
                                 issues, such as network connectivity problems
                                 or configuration errors.

  Documentation     10           Provides clear and concise documentation of the
                                 installation, configuration, and testing
                                 process.

  Total             /70          
  ------------------------------------------------------------------------------
