create or replace package body "ras_pck_rent_crud" as

function create_rent(
  p_ren_dev_id ras_rentals.ren_dev_id,
  p_ren_u_rental_id ras_rentals.
)
  return number as
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




end "ras_pck_rent_crud";