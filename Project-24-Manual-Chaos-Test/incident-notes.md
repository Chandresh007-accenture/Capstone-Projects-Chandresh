# Incident Notes – Project 24

**Project:** Manual Chaos Test
**Author:** Chandresh Kumar
**Service:** Apache2

## 1. Incident Description
A manual failure was simulated by intentionally stopping the Apache HTTP Server.

## 2. Failure Simulation
Command executed:

    sudo systemctl stop apache2

Observed status:

    inactive (dead)

## 3. Recovery Action
The Apache service was restarted.

Command executed:

    sudo systemctl start apache2

## 4. Recovery Verification
The service status was checked using:

    sudo systemctl status apache2

Observed status:

    active (running)

## 5. Conclusion
The Apache service was successfully stopped and restarted. The service returned to its running state, demonstrating successful manual failure recovery.

**Incident Status:** Recovered successfully.
