DROP TABLE IF EXISTS Nodes;
CREATE TABLE "Nodes" (
	"node_definition"  TEXT UNIQUE NOT NULL Primary Key,
	"cluster"  TEXT NOT NULL,
	"role"  TEXT NOT NULL,
	"classes"  TEXT NOT NULL,
	"environment"  TEXT NOT NULL
);
.separator ","
.import config/nodes_database.csv Nodes
DROP TABLE IF EXISTS TemporaryEnvironmentConfiguration;
CREATE TABLE "TemporaryEnvironmentConfiguration" (
	"fqdn"  TEXT UNIQUE NOT NULL Primary Key,
	"environment"  TEXT NOT NULL,
	"ConfTimeStart"  TEXT NOT NULL,
	"ConfTimeEnd"  TEXT NOT NULL
);
.separator ","
.import config/environments_database.csv TemporaryEnvironmentConfiguration
