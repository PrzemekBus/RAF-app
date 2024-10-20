create or replace package "ras_pck_device_crud" as
  function get_device(p_dev_id ras_devices.dev_id%type) return ras_devices%rowtype;
  function add_device(p_device ras_devices%rowtype, p_image_url varchar2) return number;
end "ras_pck_device_crud";
/

create or replace package body "ras_pck_device_crud" as

function get_device(p_dev_id ras_devices.dev_id%type)
  return ras_devices%rowtype as
  r_device ras_devices%rowtype;
begin
  select * into r_device from ras_devices where dev_id = p_dev_id;
  return r_device;
exception
  when no_data_found then
    raise_application_error(-20001, 'No device found with id: ' || p_dev_id);
  when others then
    raise_application_error(-20002, 'Error occuerred whil retrieving device data: ' || sqlerrm); 
end;

function add_device(p_device ras_devices%rowtype, p_image_url varchar2)
  return number as
  v_returning number;
begin
  ras_pck_logger.info_log('ras_pck_device_crud.add_device 1'||SQLERRM, null, null);
  insert into ras_devices (
    dev_u_id,
    dev_name,
    dev_type,
    dev_description,
    dev_rental_price,
    dev_rental_period,
    dev_period_type
  ) values (
    p_device.dev_u_id,
    p_device.dev_name,
    p_device.dev_type,
    p_device.dev_description,
    p_device.dev_rental_price,
    p_device.dev_rental_period,
    p_device.dev_period_type
  ) returning dev_id into v_returning;

  ras_pck_logger.info_log('ras_pck_device_crud.add_device 2'||SQLERRM, null, null);
  insert into ras_device_images (
    di_dev_id, 
    di_url
  ) values (
    v_returning, 
    p_image_url
  );
  ras_pck_logger.info_log('ras_pck_device_crud.add_device 3'||SQLERRM, null, null);
  return v_returning;
exception
  when others then
    raise_application_error(-20002, 'Error occuerred whil retrieving device data: ' || sqlerrm); 
    ras_pck_logger.error_log('ras_pck_device_crud.add_device'||SQLERRM, null, null);
    return null;
end;

end "ras_pck_device_crud";