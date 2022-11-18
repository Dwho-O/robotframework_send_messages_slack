# robotframework_send_messages_slack

O arquivo run.py foi criado para passar os parâmetros do WebHooks, o diretório dos testes e encurtá-los.
Para conseguir integrar o WebHooks primeiramente você deverá adicioná-lo na sua conta do slack através da URL:

Depois deverá adiquirir a URL Base do URL Webhooks para adicionar no arquivo run.py

Como enviar mensagens para o Slack de seus robôs de software

Você pode facilmente enviar mensagens para um canal em seu espaço de trabalho Slack de seus robôs usando a biblioteca RPA.Notifier.
Configure seu espaço de trabalho Slack para aceitar webhooks de entrada
    
Em seu ambiente Slack, selecione "Aplicativos", localize o aplicativo Incoming WebHooks e adicione-o ao seu espaço de trabalho:
https://robocorp.com/docs/development-guide/slack/sending-messages-to-slack
    
Adicionar o aplicativo WebHooks de entrada no Slack
Selecione o canal no qual o webhook postará mensagens:

Escolha o canal do webhook
Na página de configuração do aplicativo, anote a URL do Webhook:

Obtenha o URL dos webhooks
Feito!

Código de exemplo do robô

<p>
import sys
import os
import platform
from os import path

sys.path.append(path.abspath('./'))
    
for param in sys.argv[1:]:
    if param == "-web":
        command = "robot --listener 'RobotNotifications;https://hooks.slack.com/services/--your url--;end_test;summary' -d ./evidencias ./Web_Automation/Tests/*.robot "
    elif param == "-fatec":
        command = "robot -d ./evidencias ./Web_Automation/Tests/fluxo_fatecjd.robot "
os.system(command)

NOTA: Para executar o robot por meio do arquivo run.py é preciso digitar o seguinte comando: python3 run.py -web  ou é possível executá-lo por meio do comando robot: robot --listener 'RobotNotifications;https://hooks.slack.com/services/--your url--;end_test;summary' -d ./evidencias ./Web_Automation/Tests/*.robot
</p>

A execução do robô envia a mensagem para o canal no Slack.

Veja a mensagem enviada no canal do Slack
