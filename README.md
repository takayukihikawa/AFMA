#
# AFMA - Automation Framework for Model-based development with AUTOSAR platform
# 
# README
# 
# 
#  
#

The following instruction will tell you how to install software. Some of 
the installation stages may require you to install additional tools 
and packages.

1. Download

 git clone git://github.com/takayukihikawa/AFMA.git

2. System Requirements

 Microsoft Windows 8.1

 ruby 2.0 
 
 MATLAB R2015b 
 
 cygwin(CYGWIN_NT-6.3-WOW64)

3. AFMA programs

 SetAutosarParam.m:Simulink model configuration tool for AUTOSAR

 yamlgenerator.rb:Automatic parameter generation tool for A-RTE

4. Runs test

 ruby yamlgenerator.rb (on cygwin)
 
 SetAutosarParam (on MATLAB command line)
