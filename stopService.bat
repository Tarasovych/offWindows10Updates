@echo off

@rem Windows Update service
sc stop wuauserv
sc config wuauserv start= disabled

@rem Windows Update Medic Service
sc stop WaaSMedicSvc
sc config WaaSMedicSvc start= disabled