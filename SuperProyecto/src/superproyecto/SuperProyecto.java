/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package superproyecto;

import static DB.DBController.createConnection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import View.ViewController;
import DB.DBController;
import static DB.DBController.createGames;
import static DB.DBController.createLeague;
import static DB.DBController.createMatchSet;
import static DB.DBController.teams;
import static DB.DBController.obtainTeamOwner;
import ModelUML.Game;
import ModelUML.MatchSet;
import ModelUML.Player;
import ModelUML.Team;
import ModelUML.TeamOwner;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author Jon Maneiro
 * @author Sebastián Zawisza
 * @author Sergio Zulueta
 * @version %I% %G%
 * @since 1.0
 */
public class SuperProyecto {

    /**
     * Abre la ventana de Login, de la cual nacen todas las demás.
     *
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        /*vvNO MODIFICAR ESTOvv*/
        try {
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
        } catch (SQLException ex) {
            Logger.getLogger(SuperProyecto.class.getName()).log(Level.SEVERE, null, ex);
        }
        /*^^NO MODIFICAR ESTO^^*/
        ViewController.login();

    }

    /**
     * Crea el calendario para la liga actual, dando a la base de datos los
     * datos para la creacion de League, MatchSets, Game y GameResult.
     *
     * @throws ParseException when the parse fails
     * @param leaguename nombre de la liga para la cual se va a crear el
     * calendario
     * @param date the date as String
     */
    public static void createCalendar(String leaguename, String date) throws ParseException {
        try {

            Connection con = createConnection();//Se crea la conexion..

            ArrayList<Team> completeTeams = teams(con);//Los equipos..
            ArrayList<Calendar> dates;//Las fechas..WIP IGUAL NO ES NECESARIO
            ArrayList<Game> games;//Los partidos..
            ArrayList<MatchSet> league = new ArrayList();//Las jornadas..
            Calendar cal = Calendar.getInstance();//Instancia de calendario, para organizar los partidos
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

            cal.setTime(sdf.parse(date));
            if (completeTeams.size() % 2 != 0) { //Si el numero de equipos es impar añade un equipo fantasma

                completeTeams.add(new Team("Null", "Null"));
            }
            int numDays = (completeTeams.size() - 1);//Dias necesarios en el torneo o lo que sea
            int halfSize = completeTeams.size() / 2;//La mitad del tamaño de el ArrayList completo de equipos

            ArrayList<Team> teams = new ArrayList();//Añadir los equipos y eliminar el primero
            teams.addAll(completeTeams);
            /*  for(Team t:completeTeams){
                System.out.println(t.getTeamName()+"\n");
            }
             */
            teams.remove(0);
            //Se crean las jornadas de "ida"
            for (int day = 0; day < numDays; day++) {//Se repetirá el numero de dias requeridos
                games = new ArrayList();

                int teamIdx = day % teams.size();//magic

                games.add(new Game(teams.get(teamIdx), completeTeams.get(0), cal.getTime()));//El primer partido de cada jornada

                for (int idx = 1; idx < halfSize; idx++) {
                    int firstTeam = (day + idx) % teams.size();
                    int secondTeam = (day + teams.size() - idx) % teams.size();
                    cal.add(Calendar.DATE, 1);

                    games.add(new Game(teams.get(firstTeam), teams.get(secondTeam), cal.getTime()));
                }
                cal.add(Calendar.DATE, 1);
                league.add(new MatchSet(games));
            }
            //Se crean las jornadas de "vuelta"
            int leagueSize = league.size();//Tamaño actual del ArrayList, antes de añadir las jornadas que faltan
            for (int h = 0; h < leagueSize; h++) {//Este pedacito de codigo Recibe los partidos que ya hay y les da la vuelta a los equipos
                //para crear la estructura de ida y vuelta.
                MatchSet tempMatchSet = league.get(h);
                ArrayList<Game> tempGames = new ArrayList();
                for (Game g : tempMatchSet.getGames()) {
                    cal.add(Calendar.DATE, 1);
                    Team tempteam1 = g.getTeam2();
                    Team tempteam2 = g.getTeam1();
                    tempGames.add(new Game(tempteam1, tempteam2, cal.getTime()));
                }
                MatchSet tempms = new MatchSet(tempGames);
                league.add(tempms);
            }
            //Ahora creamos la Liga en la Base de Datos
            createLeague(leaguename, con);

            //Insertamos las jornadas
            int x = 0;
            while (x < league.size()) {
                createMatchSet(leaguename, con);
                x++;
            }

            //Insertamos los juegos
            int y = 1;
            int z = 0;
            for (MatchSet m : league) {
                for (Game gm : m.getGames()) {
                    z++;
                    createGames(gm, z, y, con);

                }
                y++;
            }

            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SuperProyecto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SuperProyecto.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    /**
     * Busca la cuenta con los parametros introducidos y devuelve un int
     * dependiendo del tipo de cuenta. Usado por el Login.
     *
     * @param username El usuario de la cuenta.
     * @param password La contraseña de la cuenta.
     * @return El tipo de cuenta.
     */
    public static byte getAccountType(String username, char[] password) throws ClassNotFoundException, SQLException {
        Connection con = createConnection();
        int type = DB.DBController.getAccountType(username, String.valueOf(password), con);
        con.close();
        return (byte) type;
    }
}
