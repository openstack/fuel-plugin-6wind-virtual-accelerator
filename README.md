Fuel Plugin for Virtual Accelerator description
------------------

    6WIND Virtual Accelerator is available for 1, 2 and 4 socket Intel x86-based
    servers and supports major Linux distributions.

	- See more at: http://www.6wind.com/products/6wind-virtual-accelerator/

User Guide
----------
    As first step clone this repository.
    When this step is done, the plugin can be correctly built with the following
    command:
    fpb --build fuel-plugin-6wind-virtual-accelerator

    Copy the generated plugin rpm package to the Fuel master and install it as
    usual:
    fuel plugins --install {package}.rpm

    When this step is finished proceed with fuel environment creation as
    detailed here:

    1. Create a new environment with the Fuel Web UI wizard.
    2. Click on the Settings tab of the Fuel Web UI.
    3. In Compute section select the plugin checkbox and edit options
       (if desired).
       In particular it is mandatory to provide the 6WIND base64 credentials
       package for software download.
       Contact 6WIND support team for more information.
    4. Associate both 6WIND Virtual Accelerator and Compute roles with nodes
       you want to accelerate
    5. Start deployment

    At the end of this whole process the Virtual Accelerator should be correctly
    installed and running on the selected node.

Support
-------

This software is provided as-is without support from 6WIND. In order to
get a proper support, you should contact 6WIND.

Testing
-------

None.

Known issues
------------

The plugin does not create nova flavors with huge page support. End users are
responsible to create those flavors.

Release Notes
-------------

**1.0.0**

* Initial release of the plugin. This is a beta version.


Bugs Reporting
--------------

Bugs should be filled on the [Launchpad fuel-plugins project]
(https://bugs.launchpad.net/fuel-plugins) with the tag `virtual-accelerator`.

Contributors
------------

* karim.mchirki@6wind.com
* samuel.gauthier@6wind.com
* maxime.leroy@6wind.com
* francesco.santoro@6wind.com
* vincent.jardin@6wind.com
* jean-mickael.guerin@6wind.com
