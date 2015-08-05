CREATE PROCEDURE myDB.myTestSP(
 	IN InputParameterOne VARCHAR(255),
 	IN InputParameterTwo VARCHAR(255),
 	OUT OutputParameterOne INTEGER
      --There could be more output parameter if you need them
 )
BEGIN
      --Insert any code here
      SET OutputParameterOne = 1;
END;