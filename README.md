# Teste Técnico de Engenharia de Dados


## Google Colaboratory (Google Colab)
Todo o teste foi feito utilizando o ambiente Google Colab. 

O Google Colab é um ambiente de notebooks Jupyter que não requer configuração e é executado na nuvem. 

Nele é possível escrever e executar códigos em Python, salvar e compartilhar suas análises além de acesso a poderosos recursos de computação científica, tudo disponibilizado pela Google gratuitamente no seu navegador.

Como se trata no final das contas de um Jupyter Notebook, é possével utilizar os comando do Jupyter Notebook.

* Os comandos de bash podem ser executados prefixando o comando com ```“!”```.

```bash
!git clone https://github.com/tiagoassun/datasprints-teste-tecnico.git
```

~~~bash
!ls -la
~~~

~~~bash
!wget -q https://archive.apache.org/dist/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
~~~

~~~bash
!tar xf spark-2.4.4-bin-hadoop2.7.tgz
~~~

~~~bash
!pip install -q findspark
~~~

~~~bash
!apt-get install openjdk-8-jdk-headless -qq > /dev/null
~~~


> **Para abrir o código diretamente no Google Colab por favor [clique aqui.](https://colab.research.google.com/drive/1jQ8l0p3irrfhwJOCRr-5i60SYhdQxZmK)**



## Conexão com o Google Driver

Para importar os arquivos será necessário mapear a raiz do Google Drive em uma pasta no Linux do Google Colab. Para isso iremos utilizar uma biblioteca especifica:

~~~python
from google.colab import drive
~~~

E para efetivamente montar a pasta no Linux:

~~~python
drive.mount('/content/drive/')
~~~

Quando o comando para mapear o diretório for executado serão solicitadas as credenciais do usuário, como é possível observar nas imagens abaixo:

-- Add imagem

Após a confirmação de credenciais o ```drive.mount``` irá montar o diretório raiz do Google Drive no Linux do Colab.

Por padrão o Google Colab define como diretório de armazenamento de arquivo o diretório ```/content/```. E se será dentro deste diretório que a raiz do Google Drive será mapeada, como no comando de montagem da pasta foi passado o diretório ```/content/drive/```, será dentro de ```/drive/``` que a pasta realmente mapeada, como é possível verificar na imagem abaixo:

-- Add imagem

O nome da pasta raiz do Google Drive é ```My Drive```, pois é assim que o Google Drive nomeia sua pasta raiz, como é possível verificar na imagem abaixo:

-- Add imagem

Após isso só necessário colocar os arquivos no seu Google Drive e utilizar um comando de leitura de arquivos em Python passando o caminho do arquivo no Google Drive, como por exemplo:

~~~python
df_trips = spark.read.json("drive/My Drive/datasets/processos-seletivos/datasprints/trips/*.json")
~~~

> **Para abrir o código diretamente no Google Colab por favor [clique aqui.](https://colab.research.google.com/drive/1jQ8l0p3irrfhwJOCRr-5i60SYhdQxZmK)**

## Links de downloads dos datasets

_Trips_ : dados sobre corridas de táxi em Nova York
- [Trip 1 - 2009](https://s3.amazonaws.com/data-sprints-eng-test/data-sample_data-nyctaxi-trips-2009-json_corrigido.json)

- [Trip 2 - 2010](https://s3.amazonaws.com/data-sprints-eng-test/data-sample_data-nyctaxi-trips-2010-json_corrigido.json)

- [Trip 3 - 2011](https://s3.amazonaws.com/data-sprints-eng-test/data-sample_data-nyctaxi-trips-2011-json_corrigido.json)

- [Trip 4 - 2012](https://s3.amazonaws.com/data-sprints-eng-test/data-sample_data-nyctaxi-trips-2012-json_corrigido.json)

[Vendor Lookup](https://s3.amazonaws.com/data-sprints-eng-test/data-vendor_lookup-csv.csv): dados sobre empresas de serviços de táxi

[Payment Lookup](https://s3.amazonaws.com/data-sprints-eng-test/data-payment_lookup-csv.csv): mapa entre prefixos e os tipos reais de pagamento

> **Para abrir o código diretamente no Google Colab por favor [clique aqui.](https://colab.research.google.com/drive/1jQ8l0p3irrfhwJOCRr-5i60SYhdQxZmK)**