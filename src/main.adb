with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_line; use Ada.Command_Line;
with Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;

with exec; use exec;
with config; use config;

procedure main is
   
   package SU   renames Ada.Strings.Unbounded;
   
--   prapare variables

--  lang to lower case
   lang : String := SU.To_String(SU.Translate(SU.To_Unbounded_String(Argument(1)), Ada.Strings.Maps.Constants.Lower_Case_Map));
   required_package : String := Argument(2);
   manager: String := getConfig(lang & ".manager");
   command: String := getConfig(lang & ".command");
   arguments: String := getConfig(lang &".arguments");
                                 
begin
   
    if (lang = "" or command = "")  then
      Put_Line("Usage: require [language] [package]");
    else 
      Put_Line(manager & " " & command & " " & required_package & " " & arguments);
      Execute(manager & " " & command & " " & required_package & " " & arguments);
   end if;
      
end main;
