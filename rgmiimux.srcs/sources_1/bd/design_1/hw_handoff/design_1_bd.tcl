
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# rgmiimux_module, vlan_inserter, vlan_inserter, vlan_inserter, vlan_inserter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set rgmii [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii ]
  set rgmii1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii1 ]
  set rgmii2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii2 ]
  set rgmii3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii3 ]
  set rgmii4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii4 ]

  # Create ports
  set clk125M [ create_bd_port -dir I -type clk clk125M ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   CONFIG.PHASE {0} \
 ] $clk125M
  set clk200M [ create_bd_port -dir I -type clk clk200M ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
 ] $clk200M
  set rstn [ create_bd_port -dir I -type rst rstn ]

  # Create instance: axis_interconnect_0, and set properties
  set axis_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 axis_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ARB_ON_TLAST {1} \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_AXIS_BASETDEST {0x00000001} \
   CONFIG.M00_AXIS_HIGHTDEST {0x00000001} \
   CONFIG.M00_FIFO_DEPTH {2048} \
   CONFIG.M00_FIFO_MODE {0} \
   CONFIG.M00_HAS_REGSLICE {1} \
   CONFIG.M01_AXIS_BASETDEST {0x00000002} \
   CONFIG.M01_AXIS_HIGHTDEST {0x00000002} \
   CONFIG.M01_FIFO_DEPTH {2048} \
   CONFIG.M01_FIFO_MODE {0} \
   CONFIG.M01_HAS_REGSLICE {1} \
   CONFIG.M02_AXIS_BASETDEST {0x00000003} \
   CONFIG.M02_AXIS_HIGHTDEST {0x00000003} \
   CONFIG.M02_FIFO_DEPTH {2048} \
   CONFIG.M02_FIFO_MODE {0} \
   CONFIG.M02_HAS_REGSLICE {1} \
   CONFIG.M03_AXIS_BASETDEST {0x00000004} \
   CONFIG.M03_AXIS_HIGHTDEST {0x00000004} \
   CONFIG.M03_FIFO_DEPTH {2048} \
   CONFIG.M03_FIFO_MODE {0} \
   CONFIG.M03_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {4} \
   CONFIG.S00_FIFO_DEPTH {2048} \
   CONFIG.S00_FIFO_MODE {0} \
   CONFIG.S00_HAS_REGSLICE {1} \
 ] $axis_interconnect_0

  # Create instance: axis_interconnect_1, and set properties
  set axis_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_interconnect:2.1 axis_interconnect_1 ]
  set_property -dict [ list \
   CONFIG.ARB_ON_TLAST {0} \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.ENABLE_FIFO_COUNT_PORTS {0} \
   CONFIG.M00_FIFO_DEPTH {2048} \
   CONFIG.M00_FIFO_MODE {1} \
   CONFIG.M00_HAS_REGSLICE {1} \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {4} \
   CONFIG.S00_FIFO_DEPTH {2048} \
   CONFIG.S00_FIFO_MODE {1} \
   CONFIG.S00_HAS_REGSLICE {1} \
   CONFIG.S01_FIFO_DEPTH {2048} \
   CONFIG.S01_FIFO_MODE {1} \
   CONFIG.S01_HAS_REGSLICE {1} \
   CONFIG.S02_FIFO_DEPTH {2048} \
   CONFIG.S02_FIFO_MODE {1} \
   CONFIG.S02_HAS_REGSLICE {1} \
   CONFIG.S03_FIFO_DEPTH {2048} \
   CONFIG.S03_FIFO_MODE {1} \
   CONFIG.S03_HAS_REGSLICE {1} \
 ] $axis_interconnect_1

  # Create instance: rgmiimux_module_0, and set properties
  set block_name rgmiimux_module
  set block_cell_name rgmiimux_module_0
  if { [catch {set rgmiimux_module_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rgmiimux_module_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: tri_mode_ethernet_mac_0, and set properties
  set tri_mode_ethernet_mac_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac:9.0 tri_mode_ethernet_mac_0 ]
  set_property -dict [ list \
   CONFIG.Enable_MDIO {false} \
   CONFIG.Frame_Filter {false} \
   CONFIG.MAC_Speed {Tri_speed} \
   CONFIG.Make_MDIO_External {false} \
   CONFIG.Management_Interface {false} \
   CONFIG.Number_of_Table_Entries {0} \
   CONFIG.Physical_Interface {RGMII} \
   CONFIG.Statistics_Counters {false} \
   CONFIG.SupportLevel {1} \
 ] $tri_mode_ethernet_mac_0

  # Create instance: tri_mode_ethernet_mac_1, and set properties
  set tri_mode_ethernet_mac_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac:9.0 tri_mode_ethernet_mac_1 ]
  set_property -dict [ list \
   CONFIG.Enable_MDIO {false} \
   CONFIG.Frame_Filter {false} \
   CONFIG.MAC_Speed {Tri_speed} \
   CONFIG.Make_MDIO_External {false} \
   CONFIG.Management_Interface {false} \
   CONFIG.Number_of_Table_Entries {0} \
   CONFIG.Physical_Interface {RGMII} \
   CONFIG.Statistics_Counters {false} \
 ] $tri_mode_ethernet_mac_1

  # Create instance: tri_mode_ethernet_mac_2, and set properties
  set tri_mode_ethernet_mac_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac:9.0 tri_mode_ethernet_mac_2 ]
  set_property -dict [ list \
   CONFIG.Enable_MDIO {false} \
   CONFIG.Frame_Filter {false} \
   CONFIG.MAC_Speed {Tri_speed} \
   CONFIG.Make_MDIO_External {false} \
   CONFIG.Management_Interface {false} \
   CONFIG.Number_of_Table_Entries {0} \
   CONFIG.Physical_Interface {RGMII} \
   CONFIG.Statistics_Counters {false} \
 ] $tri_mode_ethernet_mac_2

  # Create instance: tri_mode_ethernet_mac_3, and set properties
  set tri_mode_ethernet_mac_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac:9.0 tri_mode_ethernet_mac_3 ]
  set_property -dict [ list \
   CONFIG.Enable_MDIO {false} \
   CONFIG.Frame_Filter {false} \
   CONFIG.MAC_Speed {Tri_speed} \
   CONFIG.Make_MDIO_External {false} \
   CONFIG.Management_Interface {false} \
   CONFIG.Number_of_Table_Entries {0} \
   CONFIG.Physical_Interface {RGMII} \
   CONFIG.Statistics_Counters {false} \
 ] $tri_mode_ethernet_mac_3

  # Create instance: tri_mode_ethernet_mac_4, and set properties
  set tri_mode_ethernet_mac_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:tri_mode_ethernet_mac:9.0 tri_mode_ethernet_mac_4 ]
  set_property -dict [ list \
   CONFIG.Enable_MDIO {false} \
   CONFIG.Frame_Filter {false} \
   CONFIG.MAC_Speed {Tri_speed} \
   CONFIG.Make_MDIO_External {false} \
   CONFIG.Management_Interface {false} \
   CONFIG.Number_of_Table_Entries {0} \
   CONFIG.Physical_Interface {RGMII} \
   CONFIG.Statistics_Counters {false} \
 ] $tri_mode_ethernet_mac_4

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_4

  # Create instance: vlan_inserter_0, and set properties
  set block_name vlan_inserter
  set block_cell_name vlan_inserter_0
  if { [catch {set vlan_inserter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vlan_inserter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VLAN_IDENTIFIER {1} \
 ] $vlan_inserter_0

  # Create instance: vlan_inserter_1, and set properties
  set block_name vlan_inserter
  set block_cell_name vlan_inserter_1
  if { [catch {set vlan_inserter_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vlan_inserter_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VLAN_IDENTIFIER {1} \
 ] $vlan_inserter_1

  # Create instance: vlan_inserter_2, and set properties
  set block_name vlan_inserter
  set block_cell_name vlan_inserter_2
  if { [catch {set vlan_inserter_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vlan_inserter_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VLAN_IDENTIFIER {1} \
 ] $vlan_inserter_2

  # Create instance: vlan_inserter_3, and set properties
  set block_name vlan_inserter
  set block_cell_name vlan_inserter_3
  if { [catch {set vlan_inserter_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $vlan_inserter_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VLAN_IDENTIFIER {1} \
 ] $vlan_inserter_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {10286} \
   CONFIG.CONST_WIDTH {80} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {8206} \
   CONFIG.CONST_WIDTH {80} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net axis_interconnect_0_M00_AXIS [get_bd_intf_pins axis_interconnect_0/M00_AXIS] [get_bd_intf_pins tri_mode_ethernet_mac_1/s_axis_tx]
  connect_bd_intf_net -intf_net axis_interconnect_0_M01_AXIS [get_bd_intf_pins axis_interconnect_0/M01_AXIS] [get_bd_intf_pins tri_mode_ethernet_mac_2/s_axis_tx]
  connect_bd_intf_net -intf_net axis_interconnect_0_M02_AXIS [get_bd_intf_pins axis_interconnect_0/M02_AXIS] [get_bd_intf_pins tri_mode_ethernet_mac_3/s_axis_tx]
  connect_bd_intf_net -intf_net axis_interconnect_0_M03_AXIS [get_bd_intf_pins axis_interconnect_0/M03_AXIS] [get_bd_intf_pins tri_mode_ethernet_mac_4/s_axis_tx]
  connect_bd_intf_net -intf_net axis_interconnect_1_M00_AXIS [get_bd_intf_pins axis_interconnect_1/M00_AXIS] [get_bd_intf_pins tri_mode_ethernet_mac_0/s_axis_tx]
  connect_bd_intf_net -intf_net rgmiimux_module_0_rgmii_m_tx_axis_mac [get_bd_intf_pins axis_interconnect_0/S00_AXIS] [get_bd_intf_pins rgmiimux_module_0/rgmii_m_tx_axis_mac]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_0_m_axis_rx [get_bd_intf_pins rgmiimux_module_0/rgmii_s_rx_axis_mac] [get_bd_intf_pins tri_mode_ethernet_mac_0/m_axis_rx]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_0_rgmii [get_bd_intf_ports rgmii] [get_bd_intf_pins tri_mode_ethernet_mac_0/rgmii]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_1_m_axis_rx [get_bd_intf_pins tri_mode_ethernet_mac_1/m_axis_rx] [get_bd_intf_pins vlan_inserter_0/s_axis]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_1_rgmii [get_bd_intf_ports rgmii1] [get_bd_intf_pins tri_mode_ethernet_mac_1/rgmii]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_2_m_axis_rx [get_bd_intf_pins tri_mode_ethernet_mac_2/m_axis_rx] [get_bd_intf_pins vlan_inserter_1/s_axis]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_2_rgmii [get_bd_intf_ports rgmii2] [get_bd_intf_pins tri_mode_ethernet_mac_2/rgmii]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_3_m_axis_rx [get_bd_intf_pins tri_mode_ethernet_mac_3/m_axis_rx] [get_bd_intf_pins vlan_inserter_2/s_axis]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_3_rgmii [get_bd_intf_ports rgmii3] [get_bd_intf_pins tri_mode_ethernet_mac_3/rgmii]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_4_m_axis_rx [get_bd_intf_pins tri_mode_ethernet_mac_4/m_axis_rx] [get_bd_intf_pins vlan_inserter_3/s_axis]
  connect_bd_intf_net -intf_net tri_mode_ethernet_mac_4_rgmii [get_bd_intf_ports rgmii4] [get_bd_intf_pins tri_mode_ethernet_mac_4/rgmii]
  connect_bd_intf_net -intf_net vlan_inserter_0_m_axis [get_bd_intf_pins axis_interconnect_1/S00_AXIS] [get_bd_intf_pins vlan_inserter_0/m_axis]
  connect_bd_intf_net -intf_net vlan_inserter_1_m_axis [get_bd_intf_pins axis_interconnect_1/S01_AXIS] [get_bd_intf_pins vlan_inserter_1/m_axis]
  connect_bd_intf_net -intf_net vlan_inserter_2_m_axis [get_bd_intf_pins axis_interconnect_1/S02_AXIS] [get_bd_intf_pins vlan_inserter_2/m_axis]
  connect_bd_intf_net -intf_net vlan_inserter_3_m_axis [get_bd_intf_pins axis_interconnect_1/S03_AXIS] [get_bd_intf_pins vlan_inserter_3/m_axis]

  # Create port connections
  connect_bd_net -net M00_AXIS_ACLK_1 [get_bd_pins axis_interconnect_0/M00_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_1/tx_mac_aclk]
  connect_bd_net -net M01_AXIS_ACLK_1 [get_bd_pins axis_interconnect_0/M01_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_2/tx_mac_aclk]
  connect_bd_net -net M02_AXIS_ACLK_1 [get_bd_pins axis_interconnect_0/M02_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_3/tx_mac_aclk]
  connect_bd_net -net M03_AXIS_ACLK_1 [get_bd_pins axis_interconnect_0/M03_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_4/tx_mac_aclk]
  connect_bd_net -net S00_AXIS_ACLK_1 [get_bd_pins axis_interconnect_0/S00_AXIS_ACLK] [get_bd_pins rgmiimux_module_0/rgmii_s_rx_aclk] [get_bd_pins tri_mode_ethernet_mac_0/rx_mac_aclk]
  connect_bd_net -net glbl_rstn_0_1 [get_bd_ports rstn] [get_bd_pins axis_interconnect_0/ARESETN] [get_bd_pins axis_interconnect_1/ARESETN] [get_bd_pins rgmiimux_module_0/arstn] [get_bd_pins tri_mode_ethernet_mac_0/glbl_rstn] [get_bd_pins tri_mode_ethernet_mac_0/rx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_0/tx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_1/glbl_rstn] [get_bd_pins tri_mode_ethernet_mac_1/rx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_1/tx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_2/glbl_rstn] [get_bd_pins tri_mode_ethernet_mac_2/rx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_2/tx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_3/glbl_rstn] [get_bd_pins tri_mode_ethernet_mac_3/rx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_3/tx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_4/glbl_rstn] [get_bd_pins tri_mode_ethernet_mac_4/rx_axi_rstn] [get_bd_pins tri_mode_ethernet_mac_4/tx_axi_rstn]
  connect_bd_net -net gtx_clk_0_1 [get_bd_ports clk125M] [get_bd_pins axis_interconnect_0/ACLK] [get_bd_pins axis_interconnect_1/ACLK] [get_bd_pins tri_mode_ethernet_mac_0/gtx_clk]
  connect_bd_net -net refclk_0_1 [get_bd_ports clk200M] [get_bd_pins tri_mode_ethernet_mac_0/refclk]
  connect_bd_net -net tri_mode_ethernet_mac_0_gtx_clk90_out [get_bd_pins tri_mode_ethernet_mac_0/gtx_clk90_out] [get_bd_pins tri_mode_ethernet_mac_1/gtx_clk90] [get_bd_pins tri_mode_ethernet_mac_2/gtx_clk90] [get_bd_pins tri_mode_ethernet_mac_3/gtx_clk90] [get_bd_pins tri_mode_ethernet_mac_4/gtx_clk90]
  connect_bd_net -net tri_mode_ethernet_mac_0_gtx_clk_out [get_bd_pins tri_mode_ethernet_mac_0/gtx_clk_out] [get_bd_pins tri_mode_ethernet_mac_1/gtx_clk] [get_bd_pins tri_mode_ethernet_mac_2/gtx_clk] [get_bd_pins tri_mode_ethernet_mac_3/gtx_clk] [get_bd_pins tri_mode_ethernet_mac_4/gtx_clk]
  connect_bd_net -net tri_mode_ethernet_mac_0_rx_reset [get_bd_pins tri_mode_ethernet_mac_0/rx_reset] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net tri_mode_ethernet_mac_0_tx_enable [get_bd_pins axis_interconnect_0/S00_AXIS_ARESETN] [get_bd_pins tri_mode_ethernet_mac_0/tx_enable]
  connect_bd_net -net tri_mode_ethernet_mac_0_tx_mac_aclk [get_bd_pins axis_interconnect_1/M00_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_0/tx_mac_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_1_rx_mac_aclk [get_bd_pins axis_interconnect_1/S00_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_1/rx_mac_aclk] [get_bd_pins vlan_inserter_0/axis_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_1_rx_reset [get_bd_pins tri_mode_ethernet_mac_1/rx_reset] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net tri_mode_ethernet_mac_1_tx_enable [get_bd_pins axis_interconnect_0/M00_AXIS_ARESETN] [get_bd_pins tri_mode_ethernet_mac_1/tx_enable]
  connect_bd_net -net tri_mode_ethernet_mac_2_rx_mac_aclk [get_bd_pins axis_interconnect_1/S01_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_2/rx_mac_aclk] [get_bd_pins vlan_inserter_1/axis_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_2_rx_reset [get_bd_pins tri_mode_ethernet_mac_2/rx_reset] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net tri_mode_ethernet_mac_2_tx_enable [get_bd_pins axis_interconnect_0/M01_AXIS_ARESETN] [get_bd_pins tri_mode_ethernet_mac_2/tx_enable]
  connect_bd_net -net tri_mode_ethernet_mac_3_rx_mac_aclk [get_bd_pins axis_interconnect_1/S02_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_3/rx_mac_aclk] [get_bd_pins vlan_inserter_2/axis_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_3_rx_reset [get_bd_pins tri_mode_ethernet_mac_3/rx_reset] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net tri_mode_ethernet_mac_3_tx_enable [get_bd_pins axis_interconnect_0/M02_AXIS_ARESETN] [get_bd_pins tri_mode_ethernet_mac_3/tx_enable]
  connect_bd_net -net tri_mode_ethernet_mac_4_rx_mac_aclk [get_bd_pins axis_interconnect_1/S03_AXIS_ACLK] [get_bd_pins tri_mode_ethernet_mac_4/rx_mac_aclk] [get_bd_pins vlan_inserter_3/axis_aclk]
  connect_bd_net -net tri_mode_ethernet_mac_4_rx_reset [get_bd_pins tri_mode_ethernet_mac_4/rx_reset] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net tri_mode_ethernet_mac_4_tx_enable [get_bd_pins axis_interconnect_0/M03_AXIS_ARESETN] [get_bd_pins tri_mode_ethernet_mac_4/tx_enable]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins axis_interconnect_1/M00_AXIS_ARESETN] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins axis_interconnect_1/S00_AXIS_ARESETN] [get_bd_pins util_vector_logic_1/Res] [get_bd_pins vlan_inserter_0/arstn]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins axis_interconnect_1/S01_AXIS_ARESETN] [get_bd_pins util_vector_logic_2/Res] [get_bd_pins vlan_inserter_1/arstn]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins axis_interconnect_1/S02_AXIS_ARESETN] [get_bd_pins util_vector_logic_3/Res] [get_bd_pins vlan_inserter_2/arstn]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins axis_interconnect_1/S03_AXIS_ARESETN] [get_bd_pins util_vector_logic_4/Res] [get_bd_pins vlan_inserter_3/arstn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins tri_mode_ethernet_mac_0/rx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_1/rx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_2/rx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_3/rx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_4/rx_configuration_vector] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins tri_mode_ethernet_mac_0/tx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_1/tx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_2/tx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_3/tx_configuration_vector] [get_bd_pins tri_mode_ethernet_mac_4/tx_configuration_vector] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


