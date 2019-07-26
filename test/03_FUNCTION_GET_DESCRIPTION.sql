-- =======================================================================
-- Author:          Venkata N
-- File Name:		03_FUNCTION_GET_DESCRIPTION.sql
-- Create date:     07/09/2019
-- Description:     Function for returning description when passed cd value
-- =======================================================================
CREATE or REPLACE FUNCTION GET_DESCRIPTION(p_code_value in varchar2)
return varchar2
is

ls_value_desc code_value.value_cdf_meaning%TYPE;

begin

  select value_cdf_meaning
    into ls_value_desc
    from edi.code_value
   where code_value = p_code_value;

  return ls_value_desc;
Exception 
  when no_data_found then
    return null;

end;
