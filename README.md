# getthermal
Gets the thermal pressure of the Mac that this is run on.

This program returns the error code, as well as prints to stdout the value of thermal pressure, which corresponds to:

0 - NSProcessInfoThermalStateNominal
1 - NSProcessInfoThermalStateFair
2 - NSProcessInfoThermalStateSerious
3 - NSProcessInfoThermalStateCritical

