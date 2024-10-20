create or replace package ras_pck_logger as
  
  procedure info_log(p_log_txt varchar2, p_log_clob clob, p_log_blob blob);
  procedure warn_log(p_log_txt varchar2, p_log_clob clob, p_log_blob blob);
  procedure error_log(p_log_txt varchar2, p_log_clob clob, p_log_blob blob);
end ras_pck_logger;
/

create or replace package body ras_pck_logger AS

  procedure save_log(p_type varchar2, p_log_txt varchar2, p_log_clob clob, p_log_blob blob) is
  begin
    insert into ras_log(log_type,log_txt,log_cdata, log_bdata)
    values (p_type, p_log_txt, p_log_clob, p_log_blob);
  end;

  procedure info_log(p_log_txt varchar2, p_log_clob clob, p_log_blob blob) is
  BEGIN
    save_log('INFO',p_log_txt,p_log_clob,p_log_blob);
  end;

  procedure warn_log(p_log_txt varchar2, p_log_clob clob, p_log_blob blob) is
  BEGIN
    save_log('WARN',p_log_txt,p_log_clob,p_log_blob);
  end;

  procedure error_log(p_log_txt varchar2, p_log_clob clob, p_log_blob blob) is
  BEGIN
    save_log('ERROR',p_log_txt,p_log_clob,p_log_blob);
  end;

end ras_pck_logger;
