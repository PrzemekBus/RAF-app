create or replace package body "ras_pck_rent" as
  
  function create_rent(
    p_dev_id number,
    p_u_renter_id number,
    p_start_date date,
    p_period number
    ) return number is
  r_device ras_devices%rowtype;
   
  v_end_date date;
  v_rent_cost number;
  v_returning number;
  begin
    
    r_device := ras_pck_device_crud.get_device(p_dev_id);
    
    v_end_date := p_start_date + p_period;
    v_rent_cost := p_period * r_device.dev_rental_price;

    insert into ras_rentals (ren_dev_id, ren_u_id, ren_start_date, ren_end_date, ren_total_cost)
    values (p_dev_id, p_u_renter_id, p_start_date, v_end_date, v_rent_cost)
    returning id into v_returning;
     
    update
      ras_device
    set
      dev_availabilyty_status = 'NA'
    where
      dev_id = ras_device.dev_id;
    return v_returning;
  end;
end "ras_pck_rent";