import java.util.ArrayList;

/**
 * Created by Leny96 on 3/6/2017.
 */
public class Console {
    private ArrayList<Estudiante> listEst;

    public Console(){
        this.listEst = new ArrayList<Estudiante>();
    }

    public ArrayList<Estudiante> getListEst() {
        return listEst;
    }

    public void setListEst(ArrayList<Estudiante> listEst) {
        this.listEst = listEst;
    }

    public  void regisEst(Estudiante est){

        listEst.add(est);
    }

    public  Estudiante find(int matricula ){
        for (Estudiante q: listEst) {
            if(q.getMatricula()== matricula){
                return q;
            }
        }
        return null;
    }

    public void removeEst(Estudiante est){
        listEst.remove(est);
    }

    public  int findpos(Estudiante est){
        for(int i=0;i< listEst.size();i++){
            if(est.getMatricula()==listEst.get(i).getMatricula()){
                return i;
            }
        }
        return -1;
    }
    public void modifyEst(Estudiante est,  Estudiante newEst ){
        int pos = findpos(est);
        listEst.set(pos,newEst);
    }
}
