with Interfaces.C; use Interfaces.C;

package body exec is
   
   procedure Execute(cmd : String) is
      function Sys (Arg : Char_Array) return Integer;
      pragma Import(C, Sys, "system");
      Ret_Val : Integer;
   begin
      Ret_Val := Sys(To_C(cmd));
   end Execute;
 
end exec ;
