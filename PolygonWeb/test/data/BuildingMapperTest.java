package data;

import static data.BuildingMapper.createBuilding;
import static data.BuildingMapper.getBuilding;
import entity.Building.*;
import exceptions.PolygonException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class BuildingMapperTest {

    public BuildingMapperTest() {
    }

    private Connection testDatabase;
    private static String USER = "polygon";
    private static String USERPW = "Polygon16sundbygning!";
    private static String DBNAME = "buildingsTest";

    @Before
    public void setUp() {
        try {
            String url = String.format("jdbc:mysql://vetterlain.dk/buildingsTest");
            Class.forName("com.mysql.jdbc.Driver");

            testDatabase = DriverManager.getConnection(url, USER, USERPW);
            try (Statement stmt = testDatabase.createStatement()) {
                stmt.execute("drop table if exists building");
                stmt.execute("create table building like testbuilding");
                stmt.execute("insert into building select * from testbuilding");
            }
            DB.setConnection(testDatabase);
        } catch (ClassNotFoundException | SQLException ex) {
            testDatabase = null;
            System.out.println("Could not open connection to database: " + ex.getMessage());;
        }
    }

    /**
     * Test of createBuilding method, of class BuildingMapper.
     */
    @Test
    public void testCreateBuilding()throws PolygonException {
        createBuilding(2800,"adressevej1",1,"bygningen");
        assertEquals("adressevej1",BuildingMapper.getBuildings().get(BuildingMapper.getBuildings().size()).getAddress());
    }

    /**
     * Test of getBuildings method, of class BuildingMapper.
     * Metoden tjekker om id er 1 som det første id på testbuildings listen er lig med
     * @throws exceptions.PolygonException
     */
    @Test
    public void testGetBuildings() throws PolygonException{
        assertEquals(1,BuildingMapper.getBuildings().size());
        
        
    }
    /**
     * Test of getBuilding method, of class BuildingMapper.
     * Metoden tjekker om den buildings id vi får tilbage er det samme som det på plads 0
     * @throws exceptions.PolygonException
     */
    @Test
    public void testGetBuilding() throws PolygonException{
        assertEquals(1,BuildingMapper.getBuilding(0).getId());
    }


}
