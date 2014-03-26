MICROSOFT ENTERPRISE LIBRARY 6

Summary: This package contains all source code for Microsoft Enterprise Library, including unit and integration tests.

The most up-to-date version of the release notes and known issues is available online:
http://aka.ms/el6release


Microsoft patterns & practices
http://microsoft.com/practices


____________________________

Survey Project Changes
____________________________


- the only file changed : _SourceEL6\Blocks\Data\Src\Data .. Database.cs
- check end of file: added methods used in DAL project -->  LoadDataSetWithoutAcceptChanges()



        //additions Fryslan Webservices - Survey Project


        /// <summary>
        /// Comment Step one:
        /// </summary>
        /// <param name="storedProcedureName">1</param>
        /// <param name="dataSet">2</param>
        /// <param name="tableNames">3</param>
        /// <param name="parameterValues">4</param>
        public virtual void LoadDataSetWithoutAcceptChanges(string storedProcedureName,
                                        DataSet dataSet,
                                        string[] tableNames,
                                        params object[] parameterValues)
        {
            using (DbCommand command = GetStoredProcCommand(storedProcedureName, parameterValues))
            {
                LoadDataSetWithoutAcceptChanges(command, dataSet, tableNames);
            }
        }


        /// <summary>
        /// Comment step 2
        /// </summary>
        /// <param name="command">1</param>
        /// <param name="dataSet">2</param>
        /// <param name="tableNames">3</param>
        public virtual void LoadDataSetWithoutAcceptChanges(DbCommand command,
                                DataSet dataSet,
                                string[] tableNames)
        {
            using (var wrapper = GetOpenConnection())
            {
                PrepareCommand(command, wrapper.Connection);
                DoLoadDataSetWithoutAcceptChanges(command, dataSet, tableNames);
            }
        }

        /// <summary>
        /// Method adjusted: AcceptChangesDuringFill added to set Rowstate to added
        /// </summary>
        /// <param name="command">command</param>
        /// <param name="dataSet">dataset</param>
        /// <param name="tableNames">tablenames</param>

        //Step Three:
        void DoLoadDataSetWithoutAcceptChanges(IDbCommand command,
                           DataSet dataSet,
                           string[] tableNames)
        {
            if (tableNames == null) throw new ArgumentNullException("tableNames");
            if (tableNames.Length == 0)
            {
                //throw new ArgumentException(Resources.ExceptionTableNameArrayEmpty, "tableNames");
                throw new ArgumentException("The table name array used to map results to user-specified table names cannot be empty.", "tableNames");
            }
            for (int i = 0; i < tableNames.Length; i++)
            {
                //if (string.IsNullOrEmpty(tableNames[i])) throw new ArgumentException(Resources.ExceptionNullOrEmptyString, string.Concat("tableNames[", i, "]"));
                if (string.IsNullOrEmpty(tableNames[i])) throw new ArgumentException("The value can not be null or an empty string.", string.Concat("tableNames[", i, "]"));
            }

            using (DbDataAdapter adapter = GetDataAdapter(UpdateBehavior.Standard))
            {
                ((IDbDataAdapter)adapter).SelectCommand = command;

                string systemCreatedTableNameRoot = "Table";
                for (int i = 0; i < tableNames.Length; i++)
                {
                    string systemCreatedTableName = (i == 0)
                                                        ? systemCreatedTableNameRoot
                                                        : systemCreatedTableNameRoot + i;

                    adapter.TableMappings.Add(systemCreatedTableName, tableNames[i]);
                }

                //added line to avoid AcceptChanges on the dataset and to force rowstate to "added" instead of "unchanged"; "added" will enforce the insert command
                adapter.AcceptChangesDuringFill = false;

                adapter.Fill(dataSet);
            }
        }

    }
}




