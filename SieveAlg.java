/**
 * Created with IntelliJ IDEA.
 * User: manisingh
 * Date: 6/16/13
 * Time: 2:39 PM
 * To change this template use File | Settings | File Templates.
 */
public class SieveAlg {
    public static void main(String [] args){
        int [] x = new int[3001];
        for(int i = 0; i < 3001; i++){
            x[i] = i;
        }

        x[1] = 0;


        for(int i = 2; i<55; i++){
            if(x[i] != 0){
                for(int j = i+i; j < 3001; j+=i)
                    x[j] = 0;
            }
        }

        for(int i = 0; i < 3001; i++)
            System.out.println(x[i]);

    }
}
