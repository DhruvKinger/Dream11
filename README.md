# Rudhir-A-BDMS
It is a project under which diff donors can register and with their address we can tell them you should donate your blood at these banks.Adding on Users who need blood don't require to register then can easily view the stock available for specific blood and can get it through the help of Organizations.Also diff Hospitals can register here and can have blood stock updated. Admin Update camps that are going to take place and these can be viewed by everyone. 

#### Website's Home Page:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(531).png)


### Advanced Features Implemented :
#### Google SignIn Facility:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(595).png)
#### User Account Management through UserIdentity:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(564).png)
#### Searching Functionalities: 
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(565).png)


+ [Development](#development)
+ [Contribute](#contribute)
+ [Setup](#setup)
+ [Features](#features)
+ [Screenshots](#screenshots)

## Development
The backend of the system is developed on *[MSSQL SERVER](https://www.microsoft.com/en-au/sql-server/sql-server-downloads)* and it is free and open source. You just need to download this and installed it on your pc and it will be integrated with the Frontend in the Visual Studio 2017.
The front end is built on *[MVC]*, you can use that in Visual Studio an OpenSource Platform Developed By Microsoft.Bootstrap Files are used too[Bootstrap v2.2.2](http://bootstrapdocs.com/v2.2.2/docs/) using [jQuery](https://blog.jquery.com/2013/02/04/jquery-1-9-1-released/) and [Ajax](https://www.w3schools.com/xml/ajax_intro.asp) and basic HTML/CSS/Javascript are used.On Form Submission Sweet Alert Library of Javascript is used which gives a beautiful popup.
Entity Framework 6.0 is used with the Database First approach is followed In this project(That Is Firstly database is developed then after that Model  and then Controller and View).

## Contribute
+ For reporting bug about an incorrect file not being processed, open a new issue.
+ PRs are always welcome to improve exisiting system and documentation too.:thumbsup:

### Default Login Credentials For Admin
| Username | Password |
| ------------- | ------------- |
| dhruvkinger813@gmail.com | India99@ |

### Default Login Credentials For Individual Donor
| Username | Password |
| ------------- | ------------- |
| dtilak1999@gmail.com | dTilak99|

### Default Login Credentials For Organization
| Username | Password |
| ------------- | ------------- |
| cse1785@gmail.com | Cse1785@ |


### Technology Used
* [MVC](https://dotnet.microsoft.com/apps/aspnet/mvc) - MVC For Learning Basics
* [Ajax](https://stackoverflow.com/questions/9988634/ajax-call-into-mvc-controller-url-issue/9988672) - Calling Controller From View using Ajax
* [JSON](https://www.w3schools.com/whatis/whatis_json.asp) - JSON Library, for storing configurations
* [Entity Framework](https://stackoverflow.com/questions/16480295/linq-group-by-and-order-by-in-c-sharp) -For adding some extra functionality through OrderBy and GroupBy

## Setup

### Prerequisite: Install MSSQL 

If you don't already have the MSSQL Database Server(MSSQL Server Version 2012) installed, you will need to install it to use this project. If it is installed, you can skip to step 4.

1. Connect to your Windows server with Remote Desktop Connection.
2. From the Start Menu, open Internet Explorer.
3. Paste one of the following URLs into the address bar for the version you want to use, then press Enter. All versions are compatible with Windows Server 2008 and 2012.<br/>
[SQL Server 2008](http://download.microsoft.com/download/0/4/B/04BE03CD-EAF3-4797-9D8D-2E08E316C998/SQLEXPRWT_x64_ENU.exe)<br/>
[SQL Server 2012](http://download.microsoft.com/download/8/D/D/8DD7BDBA-CEF7-4D8E-8C16-D9F69527F909/ENU/x64/SQLEXPRWT_x64_ENU.exe)<br/>
[SQL Server 2014](http://download.microsoft.com/download/E/A/E/EAE6F7FC-767A-4038-A954-49B8B05D04EB/ExpressAndTools%2064BIT/SQLEXPRWT_x64_ENU.exe)
4. Scroll down and click Run to begin the download of SQL Server.
5. Click Yes to begin the install.
6. Click New installation or add features to an existing installation.
7. Agree to the terms for SQL Server, and proceed with the rest of the steps in the install wizard. During the wizard, make sure you perform the following steps:
When you get to the section for Server Configuration, make sure to toggle SQL Server Browser to Automatic.
When you get to the section for Database Engine Configuration, select Mixed Mode for authentication, a0nd enter a master password for your SQL Server install.

### Install Visual Studio 2017
Step 1: Before you begin installing Visual Studio:
1. Check the system requirements. These requirements help you know whether your computer supports Visual Studio 2017.
2. Apply the latest Windows updates. These updates ensure that your computer has both the latest security updates and the required system components for Visual Studio.
3. Reboot. The reboot ensures that any pending installs or updates don't hinder the Visual Studio install.
4. Free up space. Remove unneeded files and applications from your %SystemDrive% by, for example, running the Disk Cleanup app.

For questions about running previous versions of Visual Studio side by side with Visual Studio 2017<br/>See the [Visual Studio Compatibility Details](https://docs.microsoft.com/en-us/visualstudio/productinfo/vs2017-compatibility-vs#compatibility-with-previous-releases)<br/>
Step 2: Download Visual Studio
Next, download the Visual Studio bootstrapper file. To do so, choose the following button, choose the edition of Visual Studio that you want, choose Save, and then choose Open folder.<br/>
[Download Visual Studio](https://visualstudio.microsoft.com/vs/older-downloads/?utm_medium=microsoft&utm_source=docs.microsoft.com&utm_campaign=vs+2017+download
)<br/>
Step 3 - Install the Visual Studio installer<br/>
Run the bootstrapper file to install the Visual Studio Installer. This new lightweight installer includes everything you need to both install and customize Visual Studio.<br/>
1. From your Downloads folder, double-click the bootstrapper that matches or is similar to one of the following files:
  * vs_community.exe for Visual Studio Community
  * vs_professional.exe for Visual Studio Professional
  * vs_enterprise.exe for Visual Studio Enterprise
If you receive a User Account Control notice, choose Yes.
2. We'll ask you to acknowledge the Microsoft [License Terms](https://visualstudio.microsoft.com/license-terms/) and the Microsoft [Privacy Statement](https://privacy.microsoft.com/en-GB/privacystatement).<br/>Choose Continue.<br/><br/>
![](https://docs.microsoft.com/en-us/visualstudio/install/media/privacy-and-license-terms.png?view=vs-2019)<br/>
<br/>Step 4 - Choose workloads
   After the installer is installed, you can use it to customize your installation by selecting the feature sets—or workloads—that you      want. Here's how.<br/>
    <br/>1. Find the workload you want in the Installing Visual Studio screen.<br/>
 <br/>![](https://docs.microsoft.com/en-us/visualstudio/install/media/vs-installer-installing-workloads.png?view=vs-2019)<br/>
 <br/>For example, choose the ".NET desktop development" workload. It comes with the default core editor, which includes basic code        editing support for over 20 languages, the ability to open and edit code from any folder without requiring a project, and integrated    source code control.<br/>
       <br/> 2. After you choose the workload(s) you want, choose Install.
    Next, status screens appear that show the progress of your Visual Studio installation.

## Features
+ Admin can update events(say a BloodCamp being Organized)and Admin have the right to Block someone's account if he finds that their records are false or some other issue is there.
+ Admin is more of the supreme or you can say a Senior Vice President Person who commands and monitors the progress.
+ Organization can access only the its portal but can do a lot of stuff their.It can add Donors as much as they wish.If a person contacts them for blood,they just need to click a button and email will be sent to all the Donors of the Organization whose blood group matches with the required one.
+ Admin can see all the processes going on say who has contacted which Organization on what date for which blood group.
+ Admin  can *Update* data and *Mark As Deleted**(i.e flag the data in table from n to y/ One of the *important* feature used in the Companies at big level).As no data is ever deleted it just *Mark As Deleted**.
+ Individual Donors can register and after registration they are shown with the List of BloodBanks in his state where blood is required.
+ We would be able to generate the dynamic reports through *Google API's and JSON* which would help the authority to find different important information System about the Processes going on.
+ *Login and Logout Functionaly is with the help of User.Identity Package*.
+ Users who need Blod not reuire to register they can directly check blood they require after tht they will be shown with Organizations having Blood Stocks plus the Individual Donors who can provide Blood too.
+ Organizations and Individual Donors can also register through Google SignIn.If they register normally then firstly email is sent which is verified through token only then their account is activated.



## Screenshots

#### Organization Login Portal,Individual Donor Login Portal and Admin Login Portal:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(562).png)
#### Admin Panel(After Login):
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(570).png)
#### Organization's Dashboard:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(594).png)
#### Login with Google Association View :
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(563).png)
#### Account Verification Link:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(569).png)
#### Admin Viewing Donors Of Organization:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(572).png)
#### User can Check Blood Stocks:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(590).png)
#### Managing The Account:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(596).png)
#### Upcoming Events:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(592).png)
#### Password Changing Panel:
![](https://github.com/DhruvKinger/Rudhir-A-BDMS/blob/master/Forgithub/Screenshot%20(597).png)


## Furture Scope:
* Windows application development for other mac and Linux, so that the Rudhir: A BDMS is easily accessible to user easily anywhere and get the benefits. The core benefit of the application development lies in improved quality of interface through timely response. Moreover, windows applications support vital features like uploading pictures.
*	We can check location from GPS and it can easily tell other Individual Donor to donate blood at this place where blood is required.
* The system could also be enhanced by adding the voice response system through the voice control system, which would help the user to quickly react instead of typing.
* We can add report submission forms to Individual Donors. So that it must be verified that one who is willing to give blood is free   from diseases. 
