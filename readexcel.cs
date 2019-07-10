outData = new DataTable();

if(!string.IsNullOrWhiteSpace(inExcelPath)){
	using(var conn= new OleDbConnection(string.Format("{0}",inExcelPath))){
		try{
			
			using(var command = new OleDbCommand()){
				command.Connection=conn;
				
				// Get all sheets in excel file
				
				var dtSheet= conn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables,null);
				
				foreach(DataRow sheet in dtSheet.Rows){
					
				string sheetName = sheet["TABLE_NAME"].ToString();
				
			     if(!sheetName.EndsWith("$")){
					 continue;
				 }
				 //Get all rows from the sheet
				 
				 command.CommandText= "SELECT * FROM ["+sheetName+"]";
				 //var dt= new DataTable();
				 outResult.TableName=sheetName;
				 
				 OleDbDataAdapter da=new OleDbDataAdapter(command);
				 da.Fill(outResult);
				 //outResult=dt;
				 break;
				 //ds.Tables.Add(dt);
				 
				}
			}
		}
		catch(Exception e){
			
		}
		finally{
			conn.close();
		}
	}
}
