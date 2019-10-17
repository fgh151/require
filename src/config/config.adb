with GNATCOLL.Config; use GNATCOLL.Config;
with Ada.Directories; use Ada.Directories;

package body config is
   function getConfig (config_name: String) return String is
      C : INI_Parser;
      Config: Config_Pool;
   begin
      Open (C, Current_Directory & "/config.cfg");
      Fill(Config, C);
      return Config.Get(config_name);
   end getConfig;
   
end config;
