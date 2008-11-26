module Config.App (
  applicationPath,
  applicationHost,
  AppEnvironment (..),
  newAppEnvironment,
  databaseConnection,
  Connection,
  customPreFilters,
  customPostFilters,
  logLevel
  ) where

import System.Log.Logger

-- Your favorite HDBC driver
import Database.HDBC.PostgreSQL

----------------------------------------------------------------
-- Environment settings
----------------------------------------------------------------
applicationPath = ""
applicationHost = "localhost:8080"

data AppEnvironment = AppEnvironment
newAppEnvironment = AppEnvironment

----------------------------------------------------------------
-- Database connection
----------------------------------------------------------------
databaseConnection :: Maybe (IO Connection)
databaseConnection = Just $ connectPostgreSQL "host=localhost dbname=turbinado user=turbinado password=turbinado"


----------------------------------------------------------------
-- RequestHandler Filter List additions
----------------------------------------------------------------
customPreFilters  = []
customPostFilters = []


----------------------------------------------------------------
-- Logging
----------------------------------------------------------------
logLevel = ERROR -- DEBUG < INFO < NOTICE < WARNING < ERROR < CRITICAL < ALERT < EMERGENCY 


