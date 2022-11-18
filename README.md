# robotframework_send_messages_slack

O arquivo run.py foi criado para passar os parâmetros do WebHooks, o diretório dos testes e encurtá-los.
Para conseguir integrar o WebHooks primeiramente você deverá adicioná-lo na sua conta do slack através da URL:
https://robocorp.com/docs/development-guide/slack/sending-messages-to-slack


NOTA: Para executar o robot por meio do arquivo run.py é preciso digitar o seguinte comando: python3 run.py -web  ou é possível executá-lo por meio do comando robot: robot --listener 'RobotNotifications;https://hooks.slack.com/services/--your url--;end_test;summary' -d ./evidencias ./Web_Automation/Tests/*.robot
</p>

A execução do robô envia a mensagem para o canal no Slack.

Veja a mensagem enviada no canal do Slack
