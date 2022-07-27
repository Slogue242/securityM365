# securityM365
Scripts and Documentus for helping to configure and defend Microsoft &amp; Office products

Folders: 
1. Phishing/Spam
  - This collection gives you easy to use scripts and docs that will help you respond to phishing/spam attacks and also tools and configrations to help prevent these attacks.
 
2. Advanced Hunting
  - This is a collection of advanced hunting queries that you may find helpful. (Please note Advanced Hunting Requires Defender For EndPoint Plan 2)
  
3. IntuneAutoConfig
  - DefaultAutoPilotProfile.txt
    - This creates creates the auto pilot profile that can be used when you are using OOBE.
      Please note in this the language is set to "en-NZ" , please change this to whichever your preferred language is. The next thing is setting the device name. This is currently set to set the device name to "SPL-%SERIAL%". You can change this to however you would like your naming convention to be. 

  - DefaultAttackSurfaceRules.txt
    - This sets the following Attack Surface Rules under a profile called - DefaultRules
    Rules: 
    Block Adobe Reader from creating child processes - Block
    
    Block execution of potentially obfuscated scripts - Block
    
    Block Win32 API calls from Office macros - Block
    
    Block credential stealing from the Windows local security authority subsystem - Audit
    
    Block JavaScript or VBScript from launching downloaded executable content - Block
    
    Block Office communication application from creating child processes - Block
    
    Block all Office applications from creating child processes - Block
    
    Block Office applications from injecting code into other processes - Block
    
    Use advanced protection against ransomware - Block
    
    Block executable content from email client and webmail - Block
    
    Block abuse of exploited vulnerable signed drivers (Device) - Block
    
