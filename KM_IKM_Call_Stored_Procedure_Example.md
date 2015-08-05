#This code should show how to call a stored procedure from ODI
<@
import java.lang.String;

import java.sql.Connection;

import java.sql.Statement;

import java.sql.ResultSet;

map = new HashMap();

java.sql.Connection targConnection = odiRef.getJDBCConnection("DEST");

java.sql.CallableStatement cs = targConnection.prepareCall("CALL myDB.myTestSP(?,?,?)");

cs.setString(1,"Santa");

cs.setString(2,"Clause");

cs.registerOutParameter(3, java.sql.Types.INTEGER);

cs.executeUpdate();

map.put("Output",cs.getString(3));

cs.close();

@>

INSERT INTO myDB.TestTable(TestColumn)VALUES('First record: <@=map.get("Output")@>')
