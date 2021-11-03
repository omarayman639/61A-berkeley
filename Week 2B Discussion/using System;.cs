using System;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using testConsoleApp;

namespace testConsoleApp
{
	class DbCommand
{
		public String Instruction { get; set; }
		public DbConnection Connection { get; set; }
		public DbCommand(DbConnection connection, String instruction)
		{
			if (instruction == null || instruction == "" || connection == null) throw new ArgumentNullException();
			this.Connection = connection;
			this.Instruction = instruction;
		}
		public void execute()
			{
			Connection.openConnection();
			Console.WriteLine(Instruction);
			Connection.closeConnection();
		}
	}
	class Program
	{                          												
		static void Main(string[] args)
		{
			DbCommand command = new DbCommand(new SqlConnection(), "this is an sql instruction");
			command.execute();
		}
	}
}