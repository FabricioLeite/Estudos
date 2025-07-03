<img src="img/kafka-logo.svg" alt="Logo do Apache Kafka" style="width:4em;">

# **Apache Kafka**


Este documento é um guia sobre os principais conceitos e configurações.


## ⚙️ Arquitetura do Kafka
![Arquitetura do Kafka.png](img/arquitetura-kafka.png)

## 🎛️ Componentes
### 🔹 **Broker**
**Definição:** Servidores que armazenam e gerenciam as partições dos tópicos no Kafka.<br/>
**Funcionamento:** Constituem o cluster Kafka e são responsáveis por receber, armazenar e replicar os dados.<br/>
**Características:** Escalabilidade horizontal e replicação de dados.<br/>
**Uso Prático:** Executam em servidores dedicados ou em contêineres, dependendo dos requisitos de escala e desempenho.<br/>
**Benefícios:** Oferecem armazenamento confiável e distribuído para os dados e permitem dimensionar horizontalmente para lidar com volumes crescentes de dados.<br/>

| Configuração | Descrição |
| ------- | --------- |
| broker.id | Identificador único para cada broker no cluster Kafka. |
| listeners | Endereço e porta para o qual o broker está configurado para escutar conexões de clientes e outros brokers. |
| log.dirs | Diretório onde os logs de segmentos de dados do Kafka serão armazenados. |
| num.partitions | Número padrão de partições que serão criadas para cada tópico automaticamente, a menos que seja especificado de outra forma durante a criação. |
| auto.create.topics.enable | Indica se o Kafka deve criar automaticamente tópicos quando os produtores os publicam pela primeira vez. |
| default.replication.factor | Número padrão de réplicas para serem mantidas para cada tópico. |
| min.insync.replicas | Número mínimo de réplicas que devem estar em sincronia para que uma gravação seja considerada bem-sucedida. |
| log.retention.hours | Número de horas para quanto tempo os segmentos de log de uma partição serão mantidos antes de serem descartados. |
| log.segment.bytes | Tamanho máximo em bytes de cada segmento de log antes que um novo segmento seja criado. |
| num.recovery.threads.per.data.dir | Número de threads de recuperação por diretório de log. |

### 🔹 **Tópico**
**Definição:** Canais de comunicação categorizados para dados no Kafka.<br/>
**Funcionamento:** Produtores enviam mensagens para tópicos, essas mensagens são consumidas por consumidores. Tópicos podem ter múltiplas partições para distribuição e paralelismo, e cada partição possui vários offsets. Cada partição só pode ser consumida por um consumidor.<br/>
**Características:** Flexibilidade na criação e configuração e suporta retenção de mensagens por tempo ou tamanho.<br/>
**Uso Prático:** Mensagens direcionadas a tópicos específicos para organização eficiente.<br/>
**Benefícios:** Facilita a organização e gerenciamento de dados, permite processamento paralelo e distribuído.

![Tópico do Kafka.png](img/topico.png)

| Configuração | Descrição |
| ------- | --------- |
| num.partitions | Número de partições que serão criadas para o tópico. |
| replication.factor | Número de réplicas a serem mantidas para cada partição do tópico. |
| retention.ms | Tempo de retenção padrão em milissegundos para mensagens em uma partição antes que sejam descartadas. |
| cleanup.policy | Política de limpeza de log para o tópico. Pode ser "delete" para excluir mensagens antigas ou "compact" para compactar mensagens. |
| min.insync.replicas | Número mínimo de réplicas que devem estar em sincronia para que uma gravação seja considerada bem-sucedida. |
| segment.bytes | Tamanho máximo em bytes de cada segmento de log antes que um novo segmento seja criado. |
| retention.bytes | Tamanho máximo em bytes de mensagens que podem ser retidas em uma partição antes que sejam lidas. |
| max.message.bytes | Tamanho máximo em bytes permitido para uma única mensagem. |
| message.timestamp.type | Tipo de timestamp a ser usado para mensagens. Pode ser "CreateTime" ou "LogAppendTime". |
| message.timestamp.difference.ms | O intervalo máximo de tempo em milissegundos pelos quais o timestamp da mensagem pode ser mais recente do que o tempo de registro do broker. |

## 🎮 **Comandos**
| Comando | Descrição |
| ------- | --------- |
| `kafka-topics.sh --create --bootstrap-server <host_bootstrap>:<porta_bootstrap> --replication-factor <fator_replicaçao> --partitions <num_partições> --topic <nome_tópico>` | Cria um novo tópico com as configurações especificadas. |
| `kafka-topics.sh --list --bootstrap-server <host_bootstrap>:<porta_bootstrap>` | Lista todos os tópicos disponíveis no cluster. |
| `kafka-topics.sh --describe --bootstrap-server <host_bootstrap>:<porta_bootstrap> --topic <nome_tópico>` | Fornece informações detalhadas sobre um tópico específico, incluindo partições e réplicas. |
| `kafka-topics.sh --delete --bootstrap-server <host_bootstrap>:<porta_bootstrap> --topic <nome_tópico>` | Exclui o tópico especificado. |
| `kafka-configs.sh --alter --bootstrap-server <host_bootstrap>:<porta_bootstrap> --entity-type topics --entity-name <nome_tópico> --add-config retention.ms=<tempo_retenção_em_ms>` | Altera a configuração de um tópico, como políticas de retenção ou políticas de limpeza. |
| `kafka-topics.sh --alter --bootstrap-server <host_bootstrap>:<porta_bootstrap> --topic <nome_tópico> --partitions <novo_número_partições>` | Aumenta ou diminui o número de partições para um tópico. |

<br/><br/>
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-Profile-informational?style=flat&logo=linkedin&logoColor=white&color=0D76A8)](https://www.linkedin.com/in/leitefabricio)