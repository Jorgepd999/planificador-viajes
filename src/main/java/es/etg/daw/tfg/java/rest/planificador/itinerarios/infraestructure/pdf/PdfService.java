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
            throw new RuntimeException("Error al generar el PDF del itinerario", e);
        }
    }

    private String construirHtml(Itinerario it) {
        StringBuilder sb = new StringBuilder();
        sb.append("<!DOCTYPE html><html><head><meta charset='UTF-8'><style>");
        sb.append("body{font-family:Arial,sans-serif;color:#1e293b;padding:30px;font-size:13px;}");
        sb.append("h1{color:#0f4c81;border-bottom:2px solid #0f4c81;padding-bottom:10px;font-size:20px;}");
        sb.append("h3{background:#0f4c81;color:white;padding:8px 15px;margin:20px 0 0 0;font-size:14px;}");
        sb.append(".resumen{margin:15px 0 25px 0;}");
        sb.append(".resumen-item{display:inline-block;background:#f0f7ff;padding:10px 16px;border-radius:6px;border-left:4px solid #0f4c81;margin:5px 8px 5px 0;}");
        sb.append(".resumen-label{font-size:10px;color:#64748b;text-transform:uppercase;}");
        sb.append(".resumen-valor{font-size:15px;font-weight:bold;color:#0f4c81;}");
        sb.append("table{width:100%;border-collapse:collapse;margin-bottom:5px;}");
        sb.append("th{background:#1d4ed8;color:white;padding:8px 10px;text-align:left;font-size:12px;}");
        sb.append("td{padding:7px 10px;border-bottom:1px solid #e2e8f0;font-size:12px;}");
        sb.append("tr:nth-child(even){background:#f8fafc;}");
        sb.append(".sin-act{color:#94a3b8;font-style:italic;padding:8px 10px;}");
        sb.append(".total{background:#0f4c81;color:white;padding:12px 20px;border-radius:6px;font-size:15px;font-weight:bold;margin-top:25px;}");
        sb.append("</style></head><body>");

        sb.append("<h1>Itinerario: ").append(escapar(it.getNombre())).append("</h1>");

        sb.append("<div class='resumen'>");
        if (it.getNombreDestino() != null) {
            sb.append(resumenItem("Destino", it.getNombreDestino()));
        }
        sb.append(resumenItem("Duracion", it.getDuracion() + " dias"));
        sb.append(resumenItem("Presupuesto", it.getPresupuesto() + " EUR"));
        if (it.getPreferencias() != null && !it.getPreferencias().isBlank()) {
            sb.append(resumenItem("Preferencias", escapar(it.getPreferencias())));
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

                sb.append("<h3>Dia ").append(dia).append("</h3>");
                if (delDia.isEmpty()) {
                    sb.append("<p class='sin-act'>Sin actividades programadas</p>");
                } else {
                    sb.append("<table><thead><tr><th>Lugar</th><th>Tipo</th><th>Precio</th><th>Duracion</th></tr></thead><tbody>");
                    for (ItemItinerario item : delDia) {
                        sb.append("<tr>")
                          .append("<td>").append(escapar(item.getNombreLugar())).append("</td>")
                          .append("<td>").append(escapar(item.getTipo())).append("</td>")
                          .append("<td>").append(item.getPrecio()).append(" EUR</td>")
                          .append("<td>").append(item.getDuracionVisita()).append(" h</td>")
                          .append("</tr>");
                    }
                    sb.append("</tbody></table>");
                }
            }

            double total = items.stream().mapToDouble(ItemItinerario::getPrecio).sum();
            sb.append("<div class='total'>Coste total estimado: ").append(String.format("%.2f", total)).append(" EUR</div>");
        }

        sb.append("</body></html>");
        return sb.toString();
    }

    private String resumenItem(String label, String valor) {
        return "<div class='resumen-item'>" +
               "<div class='resumen-label'>" + label + "</div>" +
               "<div class='resumen-valor'>" + valor + "</div>" +
               "</div>";
    }

    private String escapar(String texto) {
        if (texto == null) return "";
        return texto.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
    }
}
