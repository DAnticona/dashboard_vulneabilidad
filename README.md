# Dashboard Vulnerability

- Tool: Qualys Guard
- BD: Knowledge DataBase
- Inputs: IPs de los Servidores de la Pesquera Peruana

## [Inventario de Headers]
- header_names=['QID','DNS','Title', 'IP', 'OS', 'Type', 'Severity', 'Port', 'Protocol', 'SSL', 'CVE ID','Solution','Results','CVSS Base','Category','Exploitability']
- header_names_out=['ID','Nombre de Red','QID','Title','IP','Hostname','OS','Vulnerability Type','Severidad','Severity','Port','Protocol','SSL','CVE ID','Solution','CVSS Base','CVSSID','Category','Patch Virtual','Critico','Estado','Published','Exploitability','Boletin','Categoria']

## >> Headers Raw>>
- QID --> Identificador de Vulnerabilidades en Qualys
- DNS --> Nombre del Hostname del activo que se resuelve a partir de consultas DNS
- Title --> Título de la Vulnerabilidad o Parche ausentes
- OS --> Sistema Operativo del activo Vulnerable
- Type --> Tipo de Vulnerabilidad (Vuln = Vulnerabilidad identificada, Practice = Vulnerabilidad posible, IG = Información obtenida del Host)
- Severity --> Severidad de la Vulnerabilidad de acuerdo a Qualys (1-5)
- Port --> Puerto donde se detecto la Vulnerabilidad
- Protocol --> Protocolo (TCP/UDP) en el cual se encontró la Vuln
- CVE ID --> CVE de la Vulnerabilidad asociada (Identificador internacional de una Vulnerabilidad)
- Solution --> Solución/Fix/Workaround de la Vulnerabilidad
- Results --> Evidencia de la Vulnerabilidad
- CVSS Base --> El CVSS v3 de la Vulnerabilidad
- Exploitability --> Si la vulnerabilidad posee ya un código de explotación
- Netbios --> Nombre del Host a partir de consultas Netbios
- Trheat --> Amenaza, descripción de la vulnerabilidad.
- Impact --> Materialización de la vulnerabilidad
- Associated Malware --> Si la Vulnerabilidad se encuentra asociada a un malware

## >> Headers Omitidos>> No se toman en cuenta para nuestro modelado por no aportar información para nuestro DashBoard propuesto y ser información que es contenida en otros parámetros.
- SSL --> Si el puerto/protocolo donde se ubica la vulnerabilidad esta asociado a un canal sobre SSL
- FQDN --> El Hostname inc el Dominio
- Vendor Reference --> Información del fabricante respecto a la Vulnerabilidad
- Bugtraq ID --> Identificador de la Vuln a parte de la BD de Bugtraq
- CVSS Temporal --> CVSS temporal
- CVSS3 Temporal --> CVSS v3 temporal
- PCI Vuln --> Si la Vulnerabilidad estaria dentro de segmento PCI en caso aplique a un CDE (CardHolder Data Environment)
- Instance --> Instancia asociada al host
- OS CPE --> Información del Sistema Operativo
- Category --> Categoría de la Vulnerabilidad
- IP Status --> Estado de la IP (Muy usado para temas de Network Discovery)
