**JEANETTE**

Security Assessment & Simulation CLI

Author: Tyree Black
Version: 1.1
Language: Ruby
Platforms: Windows 10/11, Linux, macOS

**Overview**

JEANETTE is a modular, menu-driven command-line interface (CLI) designed to assist with security assessment, configuration auditing, and defensive validation in controlled and authorized environments.

The project focuses on visibility, awareness, and analysis rather than exploitation. JEANETTE provides a structured framework for launching security tools, reviewing system exposure, and organizing defensive workflows from a single interface.

**Purpose**

The goal of JEANETTE is to:

Provide a centralized CLI for security assessment tasks

Encourage defensive-first thinking and system awareness

Offer a clean, extensible framework for future security modules

Serve as a learning and research platform for security concepts

JEANETTE is intended for educational use, lab environments, and authorized systems only.

**Features**

ASCII-art banner and colorized CLI interface

Interactive interpreter (JEANETTE>) using Readline

Modular architecture for security assessment tasks

Menu-based and command-based input support

Extensible design for adding new modules

Current Modules (Planned / In Progress)

Insecure Ports Assessment
Identifies exposed or commonly risky ports and services for awareness and review.

Vulnerability Awareness Module
Highlights potential risks based on installed services and known indicators (non-intrusive).

Social Engineering Indicator Detection
Focuses on recognizing behavioral and environmental indicators rather than conducting attacks.

Configuration Auditing
Reviews system configuration settings for common security weaknesses and misconfigurations.

Malicious Code Analysis (Static Review)
Intended for controlled analysis and inspection, not execution or exploitation.

Reporting & Exporting
Aggregates findings into readable summaries for documentation and review.

**Usage**

JEANETTE operates as an interactive CLI application.

Launch the application from the terminal

Review the available modules from the main menu

Enter a numeric selection or command at the JEANETTE> prompt

Modules execute and return control to the main interface

Command-line arguments may be added in future versions for non-interactive use.

Design Philosophy

Assessment over exploitation

Observation over modification

Clarity over complexity

Ethics and authorization first

JEANETTE is designed to help users understand what exists, what could be at risk, and what should be improved — not to compromise systems.

Requirements

Ruby (modern version recommended)

Terminal with ANSI color support

Authorized access to the system being assessed

External tools (if launched) must be installed separately

Disclaimer

JEANETTE is intended for authorized security testing, education, and research only.
The author assumes no responsibility for misuse outside permitted environments.

Use responsibly and ethically.
