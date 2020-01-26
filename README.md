# Dream11
Under this project different users can register,after filling in some details and then can create their team of upcoming International Cricket Matches by choosing a mixed team of 11 players,whom they think will perform well in the match.They have to choose mix players from both the teams and some validations are set according to which their team selection will be done.Once fixed no of users are created for a particular match then user cann't create more teams.Once the match is over Admin Updates points of the players on the basis of their performance.User with maximum points will win the competition. 

#### Website's Home Page:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(531).png)


### Advanced Features Implemented :
#### Application User Count:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(601).png)
#### Subscribe For Latest News:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(602).png)
#### Password Encryption Base 64: 
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(600).png)
#### Upcoming Matches CountDown: 
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(608).png)


+ [Development](#development)
+ [Contribute](#contribute)
+ [Setup](#setup)
+ [Features](#features)
+ [Screenshots](#screenshots)



## Development
The backend of the system is developed on *[MSSQL SERVER](https://www.microsoft.com/en-au/sql-server/sql-server-downloads)* and it is free and open source. You just need to download this and installed it on your pc and it will be integrated with the Frontend in the Visual Studio 2017.
The front end is built on *[ASP.NET C#]*, you can use that in Visual Studio an OpenSource Platform Developed By Microsoft.Bootstrap Files are used too[Bootstrap v2.2.2](http://bootstrapdocs.com/v2.2.2/docs/) using [jQuery](https://blog.jquery.com/2013/02/04/jquery-1-9-1-released/) and [Ajax](https://www.w3schools.com/xml/ajax_intro.asp) and basic HTML/CSS/Javascript are used.

## Contribute
+ For reporting bug about an incorrect file not being processed, open a new issue.
+ PRs are always welcome to improve exisiting system and documentation too.:thumbsup:

### Default Login Credentials For Admin
| Username      | Password |
| ------------- | ------------- |
|    ADMIN      | ADMIN |

### Default Login Credentials For User
| Username | Password |
| ------------- | ------------- |
| dk | 12345|


### Technology Used
* [ASP.NET C#](https://www.tutorialspoint.com/asp.net/) - ASP.NET C# For Learning Basics
* [Ajax](https://www.w3schools.com/xml/ajax_intro.asp) - Introducing with Ajax
* [JQuery](https://www.w3schools.com/jquery/) - Jquery for creating Validations
* [CSS](https://www.quackit.com/css/tutorial/implementing_css.cfm) -For Adding CSS in Design

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
+ Admin can create players.Details of players are also updated by Admin.
+ Admin is more of the supreme or you can say a Senior Vice President Person who commands and monitors the progress.
+ Admin adds different Venues,Matches,Countries etc. and so on.
+ Once match is over then Admin updates the points of the players on the basis of fixed criteria already set(say like 2 points for every wicket,1.5 points for taking a catch and so on).
+ Users have to do only one thing that is creating their best possible team that consists of Validations like(Maximum 1 Wicket Keeper,Maximum 4 Bowlers,Maximum 5 Batsman,Maximum 2 AllRounders).
+ In order to see the results User need to signin.
+ Login and Logout Functionaly is with the help of User.Identity Package.
+ Applied Hit Counter that displays number of users of Website.
+ Password is Encrypted in Base 64 before saving into the database.

## Screenshots

#### User and Admin Login Portal:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(599).png)
#### Admin Panel(After Login):
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(603).png)
#### Registration Form For User:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(609).png)
#### Admin Point Updater :
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(604).png)
#### Admin Updating Matches List:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(606).png)
#### Admin Creating Players:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(605).png)
#### Admin Updating Venues
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(607).png)
#### User Account Management:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(612).png)
#### Checking Results:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(610).png)
#### Password Changing Panel:
![](https://github.com/DhruvKinger/Dream11/blob/master/Forgithub/Screenshot%20(611).png)


## Furture Scope:
* Windows application development for other mac and Linux, so that the Dream11 is easily accessible to user easily anywhere and can play th game. The core benefit of the application development lies in improved quality of interface through timely response. 
*	We can check location from GPS that from which location the new user has registered.
* The system could also be enhanced by adding the Machine Learning to the project that is it can be used in future to predict the result of the match using Azure Machine Learning.
* Android and IOS Apps for this game.So,that users can access it on Mobile Devices too. 
