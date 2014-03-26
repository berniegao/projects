________________________________________________________________________________________________


Survey™ Project v. 2.2 - The open source web survey and form engine

________________________________________________________________________________________________


Available release packages for the Survey™ Project v. 2.2 solution:

- Install		: http://survey.codeplex.com/Release/ProjectReleases.aspx
- Upgrade		: see advise below
- Source		: v. 2.2 available soon at http://survey.codeplex.com
- MS WebApp gallery	: Survey™ Project 2.0 available

________________________________________________________________________________________________

New Features & fixes:

1. Replacement of FreeTextBox editor by CKeditor + Skins & Filemanager
2. Repair of bug DBnull error on question insert into Libary
3. Repair of bug password removed on update User (User manager)
4. Repair of bug Survey Taker, on login not authorised message
5. Repair of JS bug datepicker en-us script added 
6. Remove redundant code/ files: surveyprivacy.ascx

7.Major overhaul of Data Acces Layer (DAL) & MSSqlserver database provider:
- added Enterprise Libraray DAAB v. 6.0 instead of MS Application Blocks
- adjustments to SqlserverDAL project and database stored procedures

8. Layout & design of frontpage and loginscreen adjustments
9. After login Firstname/ Lastname shown instead of username only


For information and questions visit the Survey™ Project community site at http://www.surveyproject.org.

________________________________________________________________________________________________

Instructions "Survey™ Project 2.2 Install package" - NEW INSTALLATION


1. SYSTEM REQUIREMENTS

Clientside:
- Browsertypes IE10 or >; Firefox <2013 versions>; Chrome <2013 verions> or > (latest versions)

Serverside:
- .NET Framework 4.* or higher must be installed
- IIS webserver (6.* or higer)
- SMTP mailserver account
- MsSqlserver 2008 R2 or 2012 database
- Supported Operating Systems: clientside = Windows7, Vista, XP; serverside = Windows Server 2003, Windows Server 2008/2012
- You must have administrator privileges on your computer 

Free downloads available at http://www.asp.net/downloads/


2. FILES
- download zipped install package to your computer
- unzip files to (new) file directory (e.g. C:/Survey/..)
- optional: right click file to "Unblock" before unzipping


3. IIS

Option 1.
- create a new Virtual Directory in IIS [e.g. called 'SurveyProject'] which points to the directory where the Survey files are unzipped
- make sure you have default.aspx specified as a Default Document for your Virtual Directory
- set Asp.NET to version 4.* (or higher) and "Pipeline mode: Integrated"

Option 2. 
- Create a WebApplication in IIS and follow the steps of option 1.
- Add the Webapplication to the proper Applicationpool using .NET 4.* and Integrated Pipeline Mode


4. DATABASE

"Existing DB installation" - MSSqlserver 2012
- start MS SQL Server 2012 (using Enterprise Manager or your tool of choice )**
- create a new empty database
- open sql file 'SurveyProject_2.2_Final_ExistingDBInstall_Mssql2012.sql' from the '_DatabaseSql' website directory in a query window
- change USE [yourdatabasename] command to the name of your database
- run the SQL query
- check to see if the database was created correctly

"Existing DB installation" - MSSqlserver 2008
- same procedure, now use 'SurveyProject_2.2_Final_ExistingDBInstall_Mssql2008.sql'


"To upgrade from a SP 2.1.1 database to SP 2.2."
- Run the script: 
* SurveyProject_2.2_Final_UpgradeExistingDBInstall_Mssql2008.sql (2008)
or 
* SurveyProject_2.2_Final_UpgradeExistingDBInstall_Mssql2012.sql (2012)


5. SECURITY
If using Windows 2000 or XP - IIS5
- the {Server}/ASPNET user account must have Read, Write and Change Control 
of the root application directory (this allows the application to create files/folders ) 

If using Windows 2003 - IIS6
- the {Server}/NetworkService user account must have Read, Write and Change Control 
of the root application directory (this allows the application to create files/folders ) 


6. DB CONNECTION
- open the web.config file in notepad or a texteditor
- Check the database connection string in the web.config file. Default is: 

  <connectionStrings>
    <add name="SurveyProjectTestConnectionString" connectionString="Data Source=[servername];Initial Catalog=[database];Persist Security Info=True;User ID=[username];Password=[yourpassword]" providerName="System.Data.SqlClient" />
  </connectionStrings>

Note: the former setting at the <nSurveySettings> section is no longer used.


7. SMTP MAILSETTINGS
- open the web.config file in notepad or a texteditor
- check smpt settings. Default is:
		<add key="NSurveySMTPServer" value="127.0.0.1" />
		<add key="NSurveySMTPServerPort" value="25" />
		<add key="NSurveySMTPServerAuthUserName" value="" />
		<add key="NSurveySMTPServerAuthPassword" value="" />

                <add key="NSurveySMTPServerEnableSsl" value="false"/>  

8. CULTURE/UICULTURE
- The language setting of your webbrowser will determine the XML languagefiles used to translate webpage texts. 
- This effect is caused by one of the settings in the web.config file: culture/ uiculture. 
- If set to "auto" (default) Survey™ will pick up culture/ language of preferred browser settings. 
- To explicitely pick a culture/ language, replace auto with "en-US" or "nl-NL" for example. 


9. CKeditor & Filemanager:

a- Set server path in Filemanager\Scripts\filemanager.config.js -->

        "serverRoot": "[your webserver]",
        "fileRoot": "",

Check instructions at: https://github.com/simogeo/Filemanager/wiki/Filemanager-configuration-file


b- Set server path in CKeditor\config.js

    config.filebrowserBrowseUrl = '/[your webserver]/Filemanager/index.html';


10. START SURVEY
- browse to http://[nameofyourwebserver]/[NameOfSurveySite] or your hosting URL in your web browser
- the application will start running

________________________________________________________________________________________________


Instructions "Survey™ 2.2 Install package" - UPGRADE EXISTING INSTALLATION

To upgrade an existing installation:
a. backup your database
b. backup the webfiles

To upgrade from a SP 2.1.1 database to SP 2.2. run the script: 

- 2008: SurveyProject_2.2_Final_UpgradeExistingDBInstall_Mssql2008.sql
or
- 2012: SurveyProject_2.2_Final_UpgradeExistingDBInstall_Mssql2012.sql


Next copy the webfiles to the SP webdirectory.
Open web.config file to adjust all settings.


________________________________________________________________________________________________

Survey's sources are released free of charge. However, you must READ and FULLY understand
 the license agreement before you download and use the software.

You can support the project (hosting, dev. tools) and/or donate. 
Go to http://survey.codeplex.com or visit the Community site at http://www.surveyproject.info

________________________________________________________________________________________________

Survey™ Source Code

Sources are published separately at the Survey Project Codeplex site: Source Code.
 
If you fix bugs or add new features that can be useful to the Survey
 community do not hesitate to contact us to integrate them in the public release.

Also if you use Survey's engine or tool in a project we would be happy to hear from 
your testimonials on our forums at http://www.surveyproject.info or in private. 

For the latest news check >> http://www.surveyproject.info
For the latest downloads check >> http://survey.codeplex.com

________________________________________________________________________________________________

Survey™ Form Samples

- Sample Survey forms can be found in the _SurveySamples directory
- Import the xml files through the New Survey menu options

________________________________________________________________________________________________



