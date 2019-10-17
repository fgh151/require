package config is

--  Get config item from ./config.cfg file by it name
--  Example config:
--  [section]
--  param=value
--  Example usage:
--  Put_line("value: " & getConfig("section.param"));
   function getConfig (config_name: String) return String ;
   
end config;
