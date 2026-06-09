package es.etg.daw.tfg.java.rest.planificador.itinerarios.infraestructure.pdf;

import com.openhtmltopdf.pdfboxout.PdfRendererBuilder;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.Itinerario;
import es.etg.daw.tfg.java.rest.planificador.itinerarios.domain.model.ItemItinerario;
import org.springframework.stereotype.Service;

import java.io.ByteArrayOutputStream;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class PdfService {

    public byte[] generarPdfItinerario(Itinerario itinerario) {

        String html = construirHtml(itinerario);

        try (ByteArrayOutputStream os = new ByteArrayOutputStream()) {

            PdfRendererBuilder builder = new PdfRendererBuilder();

            builder.withHtmlContent(html, null);
            builder.toStream(os);
            builder.run();

            return os.toByteArray();

        } catch (Exception e) {

            System.err.println("===== ERROR GENERANDO PDF =====");
            e.printStackTrace();

            throw new RuntimeException(
                    "Error al generar el PDF del itinerario",
                    e
            );
        }
    }

    private String construirHtml(Itinerario it) {

        StringBuilder sb = new StringBuilder();

        sb.append("""
                <!DOCTYPE html>
                <html xmlns="http://www.w3.org/1999/xhtml">
                <head>
                    <meta charset="UTF-8" />
                    <title>Itinerario</title>
                    <style>
                        body{
                            font-family: Arial, sans-serif;
                            color:#1e293b;
                            padding:30px;
                            font-size:13px;
                        }

                        h1{
                            color:#0f4c81;
                            border-bottom:2px solid #0f4c81;
                            padding-bottom:10px;
                            font-size:20px;
                        }

                        h3{
                            background:#0f4c81;
                            color:white;
                            padding:8px 15px;
                            margin:20px 0 0 0;
                            font-size:14px;
                        }

                        .resumen{
                            margin:15px 0 25px 0;
                        }

                        .resumen-item{
                            display:inline-block;
                            background:#f0f7ff;
                            padding:10px 16px;
                            border-radius:6px;
                            border-left:4px solid #0f4c81;
                            margin:5px 8px 5px 0;
                        }

                        .resumen-label{
                            font-size:10px;
                            color:#64748b;
                            text-transform:uppercase;
                        }

                        .resumen-valor{
                            font-size:15px;
                            font-weight:bold;
                            color:#0f4c81;
                        }

                        table{
                            width:100%;
                            border-collapse:collapse;
                            margin-bottom:5px;
                        }

                        th{
                            background:#1d4ed8;
                            color:white;
                            padding:8px 10px;
                            text-align:left;
                            font-size:12px;
                        }

                        td{
                            padding:7px 10px;
                            border-bottom:1px solid #e2e8f0;
                            font-size:12px;
                        }

                        tr:nth-child(even){
                            background:#f8fafc;
                        }

                        .sin-act{
                            color:#94a3b8;
                            font-style:italic;
                            padding:8px 10px;
                        }

                        .total{
                            background:#0f4c81;
                            color:white;
                            padding:12px 20px;
                            border-radius:6px;
                            font-size:15px;
                            font-weight:bold;
                            margin-top:25px;
                        }
                    </style>
                </head>
                <body>
                """);

        sb.append("<h1>Itinerario: ")
          .append(escapar(it.getNombre()))
          .append("</h1>");

        sb.append("<div class=\"resumen\">");

        if (it.getNombreDestino() != null) {
            sb.append(resumenItem("Destino", it.getNombreDestino()));
        }

        sb.append(resumenItem("Duración", it.getDuracion() + " días"));
        sb.append(resumenItem("Presupuesto", it.getPresupuesto() + " EUR"));

        if (it.getPreferencias() != null && !it.getPreferencias().isBlank()) {
            sb.append(resumenItem("Preferencias", it.getPreferencias()));
        }

        sb.append("</div>");

        List<ItemItinerario> items = it.getItems();

        if (items == null || items.isEmpty()) {

            sb.append("<p>No se encontraron actividades para este itinerario.</p>");

        } else {

            for (int dia = 1; dia <= it.getDuracion(); dia++) {

                final int d = dia;

                List<ItemItinerario> delDia = items.stream()
                        .filter(i -> i.getDia() == d)
                        .collect(Collectors.toList());

                sb.append("<h3>Día ")
                  .append(dia)
                  .append("</h3>");

                if (delDia.isEmpty()) {

                    sb.append("<p class=\"sin-act\">Sin actividades programadas</p>");

                } else {

                    sb.append("""
                            <table>
                                <thead>
                                    <tr>
                                        <th>Lugar</th>
                                        <th>Tipo</th>
                                        <th>Precio</th>
                                        <th>Duración</th>
                                    </tr>
                                </thead>
                                <tbody>
                            """);

                    for (ItemItinerario item : delDia) {

                        sb.append("<tr>")
                                .append("<td>")
                                .append(escapar(item.getNombreLugar()))
                                .append("</td>")

                                .append("<td>")
                                .append(escapar(item.getTipo()))
                                .append("</td>")

                                .append("<td>")
                                .append(item.getPrecio())
                                .append(" EUR</td>")

                                .append("<td>")
                                .append(item.getDuracionVisita())
                                .append(" h</td>")

                                .append("</tr>");
                    }

                    sb.append("""
                            </tbody>
                            </table>
                            """);
                }
            }

            double total = items.stream()
                    .mapToDouble(ItemItinerario::getPrecio)
                    .sum();

            sb.append("<div class=\"total\">")
              .append("Coste total estimado: ")
              .append(String.format("%.2f", total))
              .append(" EUR</div>");
        }

        sb.append("""
                </body>
                </html>
                """);

        return sb.toString();
    }

    private String resumenItem(String label, String valor) {

        return """
                <div class="resumen-item">
                    <div class="resumen-label">
                """
                + escapar(label)
                + """
                    </div>
                    <div class="resumen-valor">
                """
                + escapar(valor)
                + """
                    </div>
                </div>
                """;
    }

    private String escapar(String texto) {

        if (texto == null) {
            return "";
        }

        return texto
                .replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&apos;");
    }
}