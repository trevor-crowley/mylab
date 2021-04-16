################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name aclk_40MHz -period 25 [get_ports aclk_40MHz]
create_clock -name aclk_20MHz -period 50 [get_ports aclk_20MHz]

################################################################################