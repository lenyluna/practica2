import java.util.ArrayList;

import static spark.Spark.port;
import static spark.Spark.staticFiles;
import spark.Request;
import spark.Response;
import spark.Route;
import spark.Spark;

import java.util.Set;

import static spark.Spark.*;
//import static spark.debug.DebugScreen.enableDebugScreen;

/**
 * Created by Leny96 on 2/6/2017.
 */
public class Main {
    public static void main(String[] args) {
        Console cons = new Console();
        Estudiante estudiante= new Estudiante(20130867, "leny", "luna","533435");
        Estudiante estudiante1 = new Estudiante(20131000, "pepe", "guzman","7245621");
        Estudiante estudiante2= new Estudiante(20131180, "thea", "peralta","343543");
        Estudiante estudiante3= new Estudiante(20130260, "anderson", "carrasco","521122");
        cons.regisEst(estudiante);
        cons.regisEst(estudiante1);
        cons.regisEst(estudiante2);
        cons.regisEst(estudiante3);

        staticFiles.location("/publico");

        new Templates().TempFreeMarker(cons);

    }

}
