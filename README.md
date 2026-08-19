Linux Admin Lab

Linux Administrator skills-ஐ hands-on terminal practice மூலம் கற்றுக்கொள்ள உருவாக்கப்பட்ட open-source CLI training environment.

Goal

Linux commands மட்டும் memorize செய்வது அல்ல.

இந்த project மூலம் learner:

- Linux system-ஐ inspect செய்ய
- users மற்றும் groups manage செய்ய
- permissions configure செய்ய
- processes troubleshoot செய்ய
- services manage செய்ய
- packages manage செய்ய
- networking diagnose செய்ய
- storage manage செய்ய
- logs analyse செய்ய
- SSH configure செய்ய
- Bash automation எழுத
- real-world Linux incidents troubleshoot செய்ய

பயிற்சி பெறுவார்.

Architecture

User
 │
 ▼
CLI Layer
 │
 ▼
Learning Engine
 │
 ▼
Lab Engine
 │
 ▼
Practice Mission
 │
 ▼
Assessment Engine
 │
 ├── PASS ──► Progress Engine
 │
 └── FAIL ──► Hint System

Learning Path

01  Linux Fundamentals
02  Filesystem
03  Users & Groups
04  Permissions
05  Processes
06  Services
07  Packages
08  Networking
09  Storage
10  Logs
11  SSH
12  Security
13  Bash
14  Troubleshooting
15  Final Administrator Challenge

Project Structure

linux-admin-lab/
├── bin/
├── core/
├── config/
├── data/
├── missions/
├── lab/
├── checks/
├── docs/
└── tests/

Design Principle

The system should validate the resulting Linux state rather than forcing the learner to use one specific command.

Learn → Practice → Investigate → Fix → Verify

Status

Early development.

The current repository contains the initial project architecture. Core CLI, learning engine, lab engine, assessment engine and missions are being implemented incrementally.

License

Open source. See "LICENSE".
