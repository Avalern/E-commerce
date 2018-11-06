ActiveAdmin.register Province do
  permit_params :province_name, :gst, :pst, :hst
end
