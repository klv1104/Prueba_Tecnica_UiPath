Proyecto UiPath: Prueba Técnica - Desarrollador Automatización de Procesos

Este repositorio contiene la solución a la prueba técnica, dividida en tres actividades principales, todas desarrolladas utilizando UiPath.

Estructura del proyecto
- Actividad1.xaml: Extracción de datos de una página web (Investing) y escritura en Excel.
- Actividad2.xaml: Consumo de API pública (Open Meteo) para obtener datos climáticos y escritura en Excel.
- Actividad3.xaml: Conexión y consulta a base de datos SQLite (Chinook.db) y escritura en Excel.
- Actividades.xlsx: Archivo generado con todas las hojas de resultados.
- consulta.sql: Script SQL ejecutado en la base de datos para obtener información solicitada.

---

Descripción por actividad

Actividad 1: Extracción web
- Uso de UiPath para acceder a una web de análisis de empresas (investing.com) y obtener información de cada empresa.
- Extracción de texto y escritura en hojas separadas de un Excel, con el nombre de cada empresa.
- Uso de actividades como `Get Text`, `Type Into`, `Write Cell`, `Write Range Workbook`.

Actividad 2: Consumo de API pública
- Realización de una solicitud HTTP GET a la API pública [Open Meteo](https://api.open-meteo.com/v1/forecast).
- Deserialización del JSON recibido para extraer "hora" y "temperatura".
- Escritura de los datos en una nueva hoja de Excel ("Clima").

Actividad 3: Conexión y consulta a base de datos
- Conexión a la base de datos "Chinook.db" utilizando el paquete "Witrics.SQLite".
- Ejecución del siguiente script SQL:

```sql
SELECT c.FirstName, c.LastName, c.Country, SUM(i.Total) AS Total
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.FirstName, c.LastName, c.Country
ORDER BY Total DESC;
