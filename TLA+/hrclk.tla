------------------MODULE HourClock-------------------

EXTENDS Naturals
VARIABLE hr

HCinit == hr \in (1..12)

HCnxt == 
    hr' = IF hr # 12 THEN hr + 1 ELSE 1

HC == HCinit /\ [][HCnxt]_hr
-----------------------------------------------------
THEOREM HC => []HCinit
=====================================================