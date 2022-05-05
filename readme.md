# Dashboard Vulnerability

- Tool: Qualys Guard
- BD: Knowledge DataBase
- Inputs: IPs de los Servidores de la Pesquera Peruana

<!-- ÍNDICE DE CONTENIDOS -->
<details>
  <summary>Índice de contenidos</summary>
  <ol>
    <li><a href="#descripción-del-proyecto">Descripción del Proyecto</a></li>
    <li><a href="#preguntas-que Responde-el-proyecto">Preguntas que Responde el Proyecto</a></li>
    <li><a href="#inventario-de-headers">Inventario de Headers</a></li>
    <li><a href="#headers-raw">Headers Raw</a></li>
    <li><a href="#headers-omitidos">Headers Omitidos</a></li>
    <li><a href="#autores">Autores</a></li>
    <li><a href="#historial-de-la-versión">Historial de la Versión</a></li>
    <li><a href="#reconocimientos">Reconocimientos</a></li>
  </ol>
</details>

## Descripción del Proyecto
Descripción del proyecto

## Preguntas que Responde el Proyecto
- Porcentaje de activos con vulnerabilidad explotables en los ultimos 30 días.
- Porcentaje de activos con vulnerabilidades con severidad alta.
- Porcentaje de activos que poseen parches pendientes de instalar.

## Inventario de Headers

header_names = ['QID','DNS','Title', 'IP', 'OS', 'Type', 'Severity', 'Port', 'Protocol', 'SSL', 'CVE ID','Solution','Results','CVSS Base','Category','Exploitability']

header_names_out = ['ID','Nombre de Red','QID','Title','IP','Hostname','OS','Vulnerability Type','Severidad','Severity','Port','Protocol','SSL','CVE ID','Solution','CVSS Base','CVSSID','Category','Patch Virtual','Critico','Estado','Published','Exploitability','Boletin','Categoria']

## Headers Raw

- QID --> Identificador de vulnerabilidades en Qualys.
- DNS --> Nombre del Hostname del activo que se resuelve a partir de consultas DNS.
- Title --> Título de la vulnerabilidad o parche ausente.
- OS --> Sistema operativo del activo vulnerable.
- Type --> Tipo de vulnerabilidad (Vuln = Vulnerabilidad identificada, Practice = Vulnerabilidad posible, IG = Información obtenida del Host).
- Severity --> Severidad de la vulnerabilidad de acuerdo a Qualys (1-5).
- Port --> Puerto donde se detecto la vulnerabilidad.
- Protocol --> Protocolo (TCP/UDP) en el cual se encontró la vulnerabilidad.
- CVE ID --> CVE de la vulnerabilidad asociada (Identificador internacional de una vulnerabilidad).
- Solution --> Solución/Fix/Workaround de la vulnerabilidad.
- Results --> Evidencia de la vulnerabilidad.
- CVSS Base --> El CVSS v3 de la vulnerabilidad.
- Exploitability --> Si la vulnerabilidad posee ya un código de explotación.
- Netbios --> Nombre del Host a partir de consultas Netbios.
- Threat --> Amenaza, descripción de la vulnerabilidad.
- Impact --> Materialización de la vulnerabilidad.
- Associated Malware --> Si la vulnerabilidad se encuentra asociada a un malware.

## Headers Omitidos

No se toman en cuenta para nuestro modelado debido a que no aportan información para nuestro DashBoard propuesto y es información que está contenida en otros parámetros.

- SSL --> Si el puerto/protocolo donde se ubica la vulnerabilidad esta asociado a un canal sobre SSL.
- FQDN --> El hostname incluído en el dominio.
- Vendor Reference --> Información del fabricante respecto a la vulnerabilidad.
- Bugtraq ID --> Identificador de la vulnerabilidad aparte de la BD de Bugtraq.
- CVSS Temporal --> CVSS temporal.
- CVSS3 Temporal --> CVSS v3 temporal.
- PCI Vuln --> Si la vulnerabilidad estaria dentro de segmento PCI en caso aplique a un CDE (CardHolder Data Environment).
- Instance --> Instancia asociada al host.
- OS CPE --> Información del sistema operativo.
- Category --> Categoría de la vulnerabilidad.
- IP Status --> Estado de la IP (Muy usado para temas de Network Discovery).

## Autores

- David Anticona
- Brian Dextre
- Christian Torres

## Historial de la Versión

* 0.1
    * Publicación inicial

## Referencias

* [Basic writing and formatting syntax](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
* [Shiny - RStudio](https://shiny.rstudio.com/tutorial/)
* [Introducción a la programación en R](https://rsanchezs.gitbooks.io/rprogramming/content/index.html)
