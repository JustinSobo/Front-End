--
-- Remove UK from UK zone `xc_attribute_option_translations`
--

DELETE ze FROM `%%XC%%_zone_elements` as ze INNER JOIN `%%XC%%_zones` as z ON ze.zone_id = z.zone_id WHERE z.zone_name = 'Europe' AND ze.element_value = 'GB';
