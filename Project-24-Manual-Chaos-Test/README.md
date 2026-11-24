# Project 24 – Manual Chaos Test

**Created by:** Chandresh Kumar

## Objective
To perform a manual chaos test by intentionally stopping the Apache web server and verifying successful recovery.

## Failure Simulation
The Apache service was initially running successfully.

The service was stopped using:

    sudo systemctl stop apache2

The service status changed to inactive (dead).

## Recovery Process
The Apache service was restarted using:

    sudo systemctl start apache2

The service status was verified using:

    sudo systemctl status apache2

The service returned to active (running).

## Result
The manual chaos test was completed successfully. Apache was intentionally stopped and successfully recovered through a manual restart.

## Screenshots
See the screenshots folder for evidence of the failure simulation and recovery.

**Author:** Chandresh Kumar
