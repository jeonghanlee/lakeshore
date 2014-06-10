lakeshore
=========

EPICS support for the Lakeshore 336/350 series controllers 

The 336 controller is almost identical to the 350, and the same
software can be used for both. Where the settings differ, this 
module provides generic menu options that apply to both controllers.

The module can also support the extra inputs supplied by the 3062
option card. 

[Lakeshore 336](http://www.lakeshore.com/products/cryogenic-temperature-controllers/model-336/Pages/Overview.aspx)
[Lakeshore 350](http://www.lakeshore.com/products/cryogenic-temperature-controllers/model-350/Pages/Overview.aspx)

Building lakeshore
==================

The lakeshore336 directory can be build as a standard EPICS support
module. You may have to edit the files in the configure directory
for your local site.

Building an IOC using lakeshore
===============================

Include the lakeshore support in the IOC configure/RELEASE file, and 
either instantiate the EPICS database in the IOC startup script or in a
substitutions file. For example:

   file lakeshore336.template
   {
      pattern {P, PORT, ADDR, TEMPSCAN, SCAN}
              {BL9:SE:LS, L0, 0, 1, 5}
   }

where the macros are:

   P - Base PV name
   PORT - Asyn port name
   ADDR - Asyn port addr
   TEMPSCAN - Scan frequency for the temperatures and raw inputs (eg. 1 second)
   SCAN - Scan frequency for the auxiliary parameters such as output ramp rate (eg. 5 seconds)

There are no libraries to link to 