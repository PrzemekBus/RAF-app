create or replace view ras_v_devices as

select 
  dev_id,
  dev_u_id,
  dev_name,
  dev_type,
  dev_description,
  dev_rental_price,
  dev_availability_status,
  dev_rental_period,
  dev_period_type,
  di_id,
  di_url,
  case dev_availability_status
    when 'A' then 'Available'
    when 'NA' then 'N/A'
  end as dsp_availabilyty,
  dev_rental_period||'/'||dev_period_type as dsp_period
from ras_devices 
  left join ras_device_images on dev_id = di_dev_id