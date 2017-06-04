import freemarker.template.Configuration;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.get;
import static spark.Spark.post;

/**
 * Created by Leny96 on 2/6/2017.
 */
public class Templates {
    public void TempFreeMarker(Console cons) {

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
        configuration.setClassForTemplateLoading(Templates.class, "/templates");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);

        get("/inicio/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", "Listado de Estudiantes");
            attributes.put("listEst", cons.getListEst());
            return new ModelAndView(attributes, "inicio.ftl");
        }, freeMarkerEngine);

        get("/formulario/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", "Formulario de registrar");
            return new ModelAndView(attributes, "Registrar.ftl");
        }, freeMarkerEngine);

        post("/registrarEstudiante", (request, response) -> {

            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre =request.queryParams("nombre");
            String apellido =request.queryParams("apellido");
            String telefono = request.queryParams("telefono");

            Estudiante estudiante= new Estudiante(matricula, nombre, apellido,telefono);
            cons.regisEst(estudiante);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", "RegistrandoEstudiante");
            attributes.put("estudiante", estudiante);

            return new ModelAndView(attributes, "RegistroconExisto.ftl");
        }, freeMarkerEngine);


        get("/vista/:matricula", (request, response) -> {

            int mat= Integer.parseInt(request.params("matricula" ));
            Estudiante est= cons.find(mat);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo","Estudiante");
            attributes.put("estudiante", est);

            return new ModelAndView(attributes, "VistaEstudiante.ftl");
        }, freeMarkerEngine);

        get("/estudiante/:matricula/eliminar/", (request, response) -> {

            int mat= Integer.parseInt(request.params("matricula" ));
            Estudiante est= cons.find(mat);

            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo","Confirmar");
            attributes.put("estudiante",est);


            return new ModelAndView(attributes, "eliminar.ftl");
        }, freeMarkerEngine);

        get("/estudiante/:matricula/eliminar/elimando", (request, response) -> {

            int mat= Integer.parseInt(request.params("matricula" ));
            Estudiante est= cons.find(mat);
            cons.removeEst(est);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo","Remove");

            return new ModelAndView(attributes, "eliminado.ftl");
        }, freeMarkerEngine);

        get("/estudiante/:matricula/modificar/", (request, response) -> {

            int mat= Integer.parseInt(request.params("matricula"));
            Estudiante est= cons.find(mat);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo","Modificar");
            attributes.put("estudiante", est);

            return new ModelAndView(attributes, "modifcar.ftl");
        }, freeMarkerEngine);

        post("/estudiante/:matricula/guardar", (request, response) -> {

            int matricula = Integer.parseInt(request.params("matricula"));
            int mat2 = Integer.parseInt(request.queryParams("matricula2"));
            String nombre =request.queryParams("nombre");
            String apellido =request.queryParams("apellido");
            String telefono = request.queryParams("telefono");
            Estudiante est = cons.find(matricula);

            Estudiante newEst= new Estudiante(mat2, nombre, apellido,telefono);
            cons.modifyEst(est,newEst);
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("titulo", "Modificando");
            return new ModelAndView(attributes, "guardando.ftl");
        }, freeMarkerEngine);


    }
}
