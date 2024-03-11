###################################################################

# Created by write_sdc on Sun Oct 16 12:51:24 2022

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max ss_typical_max_0p81v_125c -max_library           \
sc9_cln40g_base_rvt_ss_typical_max_0p81v_125c\
                         -min ff_typical_min_0p99v_m40c -min_library           \
sc9_cln40g_base_rvt_ff_typical_min_0p99v_m40c
set_wire_load_mode top
set_wire_load_model -name Zero -library                                        \
sc9_cln40g_base_rvt_ss_typical_max_0p81v_125c
set_ideal_network [get_ports clk]
create_clock [get_ports clk]  -period 50  -waveform {0 25}
set_input_delay -clock clk  0  [get_ports {a[7]}]
set_input_delay -clock clk  0  [get_ports {a[6]}]
set_input_delay -clock clk  0  [get_ports {a[5]}]
set_input_delay -clock clk  0  [get_ports {a[4]}]
set_input_delay -clock clk  0  [get_ports {a[3]}]
set_input_delay -clock clk  0  [get_ports {a[2]}]
set_input_delay -clock clk  0  [get_ports {a[1]}]
set_input_delay -clock clk  0  [get_ports {a[0]}]
set_input_delay -clock clk  0  [get_ports {b[7]}]
set_input_delay -clock clk  0  [get_ports {b[6]}]
set_input_delay -clock clk  0  [get_ports {b[5]}]
set_input_delay -clock clk  0  [get_ports {b[4]}]
set_input_delay -clock clk  0  [get_ports {b[3]}]
set_input_delay -clock clk  0  [get_ports {b[2]}]
set_input_delay -clock clk  0  [get_ports {b[1]}]
set_input_delay -clock clk  0  [get_ports {b[0]}]
set_input_delay -clock clk  0  [get_ports {c[7]}]
set_input_delay -clock clk  0  [get_ports {c[6]}]
set_input_delay -clock clk  0  [get_ports {c[5]}]
set_input_delay -clock clk  0  [get_ports {c[4]}]
set_input_delay -clock clk  0  [get_ports {c[3]}]
set_input_delay -clock clk  0  [get_ports {c[2]}]
set_input_delay -clock clk  0  [get_ports {c[1]}]
set_input_delay -clock clk  0  [get_ports {c[0]}]
set_input_delay -clock clk  0  [get_ports s]
set_input_delay -clock clk  0  [get_ports reset]
set_output_delay -clock clk  0  [get_ports {d[15]}]
set_output_delay -clock clk  0  [get_ports {d[14]}]
set_output_delay -clock clk  0  [get_ports {d[13]}]
set_output_delay -clock clk  0  [get_ports {d[12]}]
set_output_delay -clock clk  0  [get_ports {d[11]}]
set_output_delay -clock clk  0  [get_ports {d[10]}]
set_output_delay -clock clk  0  [get_ports {d[9]}]
set_output_delay -clock clk  0  [get_ports {d[8]}]
set_output_delay -clock clk  0  [get_ports {d[7]}]
set_output_delay -clock clk  0  [get_ports {d[6]}]
set_output_delay -clock clk  0  [get_ports {d[5]}]
set_output_delay -clock clk  0  [get_ports {d[4]}]
set_output_delay -clock clk  0  [get_ports {d[3]}]
set_output_delay -clock clk  0  [get_ports {d[2]}]
set_output_delay -clock clk  0  [get_ports {d[1]}]
set_output_delay -clock clk  0  [get_ports {d[0]}]
