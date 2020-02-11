# Teste Técnico de Engenharia de Dados


## Google Colaboratory (Google Colab)
Todo o teste foi feito utilizando o ambiente Google Colab. 

O Google Colab é um ambiente de notebooks Jupyter que não requer configuração e é executado na nuvem. 

Nele é possível escrever e executar códigos em Python, salvar e compartilhar suas análises além de acesso a poderosos recursos de computação científica, tudo disponibilizado pela Google gratuitamente no seu navegador.

Como se trata no final das contas de um Jupyter Notebook, é possével utilizar os comando do Jupyter Notebook.

* Os comandos de bash podem ser executados prefixando o comando com “!”.

> ```!git clone [git clone url]```

> ```!ls```

> ```!wget [url] -p drive/[nome da pasta]```

> ```!pip install [nome do pacote]```

> ```!apt-get install [nome do pacote]```


Para abrir o código diretamente no Google Colab por favor [clique aqui.](https://colab.research.google.com/drive/1jQ8l0p3irrfhwJOCRr-5i60SYhdQxZmK)

### Conexão com o Google Driver

Para importar os arquivos será necessário mapear a raiz do Google Drive em uma pasta no Linux do Google Colab. Para isso iremos utilizar uma biblioteca especifica:

> ```from google.colab import drive```

E para efetivamente montar a pasta no Linux:

> ```drive.mount('/content/drive/')```

Quando o comando para mapear o diretório for executado serão solicitadas as credenciais do usuário, como é possível observar nas imagens abaixo:

-- Add imagem

Após a confirmação de credenciais o ```drive.mount``` irá montar o diretório raiz do Google Drive no Linux do Colab.

Por padrão o Google Colab define como diretório de armazenamento de arquivo o diretório ```/content/```. E se será dentro deste diretório que a raiz do Google Drive será mapeada, como no comando de montagem da pasta foi passado o diretório ```/content/drive/```, será dentro de ```/drive/``` que a pasta realmente mapeada, como é possível verificar na imagem abaixo:

-- Add imagem

O nome da pasta raiz do Google Drive é ```My Drive```, pois é assim que o Google Drive nomeia sua pasta raiz, como é possível verificar na imagem abaixo:

-- Add imagem

Após isso só necessário colocar os arquivos no seu Google Drive e utilizar um comando de leitura de arquivos em Python passando o caminho do arquivo no Google Drive, como por exemplo:

> ```df_trips = spark.read.json("drive/My Drive/datasets/processos-seletivos/datasprints/trips/*.json")```