. $HOME/.bash_profile
. $OPEN_DATA_ETL_LOCATION/ETL_Setup.sh


ETL_NAME=SGIM_Results_ggws-77ih
ETL_DIR_RELATIVE=SGIM_Results_ggws-77ih/
DATA_SYNC_ETL=Y

echo "ETL $ETL_NAME has started at $NOW."

. $ETL_ROOT_DIR/Standard_ETL.sh $ETL_NAME $ETL_DIR_RELATIVE $DATA_SYNC_ETL 
