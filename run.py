    
import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
# import config
    
for param in sys.argv[1:]:
    if param == "-web":
        command = "robot --listener 'RobotNotifications;https://hooks.slack.com/services/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;end_test;summary' -d ./evidencias ./Web_Automation/Tests/*.robot "
    elif param == "-fatec":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_fatecjd.robot "
os.system(command)

