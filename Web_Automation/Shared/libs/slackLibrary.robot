*** Settings ***
Library         RobotNotifications   https://hooks.slack.com/services/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


*** Test Cases ***
Example Test
    Post Message To Channel      This is a custom message!    icon_emoji=robot_face    username=Robot    
    ...                          channel=robot-notifications