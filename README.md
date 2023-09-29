# Manage easily AMD EPP Active Driver

This utility lets you easily manage the AMD Energy Performance Profile driver included by default for Zen2+ CPUs in Linux >=6.5 with a simple commandline interface.

## Installation

Clone the repo:

```
git clone https://github.com/alexaib/eppctl && cd eppctl
```

## Usage

This utility acts for all CPUs. It provides a user-friendly systemd-like interface.

By using **PolicyKit**, **eppctl** can request required permissions to change the profile, both in GUI and TUI modes.

Currently, it doesn't support per CPU profiles, though it may be added in the future.

**eppctl** supports the following operation modes as an argument:

- **status**: outputs the current EPP profile selected.
- **set-profile**: applies the selected profile.
- **get-profile**: queries available profiles by the CPU.
