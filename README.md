**CRMFormular**

**Beschreibung**

Dieses Projekt wurde mit Java, JSP, Servlet und JavaBean entwickelt. 
Ziel des Projekts ist es, die Zusammenarbeit zwischen einer JSP-Seite, 
einem Servlet, einem DataManager und einer JavaBean zu demonstrieren.

Der Benutzer gibt seinen Vornamen, Nachnamen und sein Alter in ein Formular ein. 
Nach dem Absenden werden die Daten vom Servlet verarbeitet. 
Der DataManager erstellt eine JavaBean, welche die eingegebenen Informationen speichert. 
Anschließend wird die Bean in der Session abgelegt und von der JSP ausgelesen und angezeigt.

Zusätzlich werden die eingegebenen Daten mit einem DateiService dauerhaft in einer Textdatei (personen.txt) auf dem lokalen Computer gespeichert. Dadurch bleiben die Daten auch nach dem Neustart der Anwendung erhalten.

**Funktionen**

- [x] Erstellung einer JSP mit einem HTML-Formular
- [x] Verarbeitung der Benutzereingaben durch ein Servlet
- [x] Verwendung einer JavaBean zur Speicherung der Daten
- [x] Nutzung eines DataManagers zur Erstellung der Bean
- [x] Speicherung der Bean in der Session
- [x] Anzeige der eingegebenen Daten auf der JSP-Seite

**Verwendete Technologien**

- Java
- JSP (JavaServer Pages)
- Jakarta Servlet
- Apache Tomcat 11
- Eclipse IDE

**Projektstruktur**

```text
CRMFormular
│
├── src/main/java
│   ├── bean
│   │   └── ExampleFormularBean.java
│   ├── manager
│   │   ├── ExampleFormularDataManager.java
│   │   └── ExampleFormularFakeManager.java
│   └── servlet
│       └── IndexServlet.java
│
└── src/main/webapp
    ├── ExampleFormular.jsp
    └── index.jsp
```

**Programmablauf**

1. Die JSP-Seite wird geöffnet.
2. Der Benutzer gibt Vorname, Nachname und Alter ein.
3. Das Formular wird an das Servlet gesendet.
4. Das Servlet liest die Eingaben.
5. Der DataManager erstellt eine JavaBean.
6. Die Bean wird in der Session gespeichert.
7. Die JSP liest die Bean aus der Session.
8. Die gespeicherten Daten werden auf der Webseite angezeigt.

**Projektziel**

Dieses Projekt dient als Übung für die Arbeit mit JSP, Servlets und JavaBeans. 
Es zeigt den Datenaustausch zwischen den einzelnen Komponenten einer Java-Webanwendung 
und die Verwendung einer Session zur Speicherung von Benutzerdaten.


result:https://github.com/ellnik/CRMFormular/blob/main/crmformular.png
